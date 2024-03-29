#include "slippymap.h"

// hash function for QPoint
uint qHash(const QPoint& p)
{
    return p.x() * 17 ^ p.y();
}

// tile size in pixels
const int tdim = 256;

// converts latitude and longitude to tile coordinates
QPointF tileForCoordinate(qreal lat, qreal lng, int zoom)
{
    qreal zn = static_cast<qreal>(1 << zoom);// 2^zoom
    qreal tx = (lng + 180.0) / 360.0;
    qreal n = lat * M_PI / 180.0; // проміжне значення n за координатою lat
    qreal ty = (1.0 - log(tan(n) + 1.0 / cos(n)) / M_PI) / 2.0; // формула Меркатора для обчислення широти
    return QPointF(tx * zn, ty * zn);
}

// converts tile coordinates to longitude
qreal longitudeFromTile(qreal tx, int zoom)
{
    //qDebug("tx:%-4f", tx);
    qreal zn = static_cast<qreal>(1 << zoom);
    qreal lng = tx / zn * 360.0 - 180.0;
    //qDebug("longitudeFromTile:%-4f", lng);
    return lng;
}

// converts tile coordinates to latitude
qreal latitudeFromTile(qreal ty, int zoom)
{
    //qDebug("ty:%-4f", ty);
    qreal zn = static_cast<qreal>(1 << zoom);
    qreal n = M_PI - 2 * M_PI * ty / zn; // проміжне значення n за координатою ty тайла
    qreal lat = 180.0 / M_PI * atan(0.5 * (exp(n) - exp(-n))); // обернена формула Меркатора для обчислення широти
    //qDebug("latitudeFromTile:%-4f", lat);
    return lat;
}

SlippyMap::SlippyMap(QObject *parent)
    : QObject(parent), width(600), height(500), zoom(12),
         latitude(49.44134), longitude(32.06432)
{
    m_emptyTile = QPixmap(tdim, tdim);
    m_emptyTile.fill(Qt::lightGray); // колір пустих тейлів

    // set up cache
    QNetworkDiskCache *cache = new QNetworkDiskCache;
    cache->setCacheDirectory(QStandardPaths::writableLocation(QStandardPaths::CacheLocation));
    m_manager.setCache(cache);
    connect(&m_manager, SIGNAL(finished(QNetworkReply*)),
            this, SLOT(handleNetworkData(QNetworkReply*)));
}

void SlippyMap::invalidate()
{
    if (width <= 0 || height <= 0)
        return;

    QPointF ct = tileForCoordinate(latitude, longitude, zoom);
    qreal tx = ct.x();
    qreal ty = ct.y();

    // top-left corner of the center tile
    int xp = width / 2 - (tx - floor(tx)) * tdim;
    int yp = height / 2 - (ty - floor(ty)) * tdim;

    // first tile vertical and horizontal
    int xa = (xp + tdim - 1) / tdim;
    int ya = (yp + tdim - 1) / tdim;
    int xs = static_cast<int>(tx) - xa;
    int ys = static_cast<int>(ty) - ya;

    // offset for top-left tile
    m_offset = QPoint(xp - xa * tdim, yp - ya * tdim);

    // last tile vertical and horizontal
    int xe = static_cast<int>(tx) + (width - xp - 1) / tdim;
    int ye = static_cast<int>(ty) + (height - yp - 1) / tdim;

    // build a rect
    m_tilesRect = QRect(xs, ys, xe - xs + 1, ye - ys + 1);

    if (m_url.isEmpty())
        download();

    emit updated(QRect(0, 0, width, height));

}

//відповідає за відображення мапи за допомогою об'єкта QPainter
void SlippyMap::render(QPainter *p, const QRect &rect)
{
    int mx = 0, my = 0; // x and y for marker
    qreal latdiff, lngdiff; // storing reminder
    QPointF center = tileForCoordinate(latitude, longitude, zoom); // getting tile points for real gps point
    int cx = qFloor(center.x());
    int cy = qFloor(center.y());

    // draw tiles
    for (int x = 0; x <= m_tilesRect.width(); ++x)
        for (int y = 0; y <= m_tilesRect.height(); ++y) {
            QPoint tp(x + m_tilesRect.left(), y + m_tilesRect.top());
            QRect box = tileRect(tp);

            // check if marker is in this tile
            if (tp.x() == cx && tp.y() == cy) {
                mx = box.x();
                my = box.y();
                latdiff = qAbs(tp.x() - center.x());
                lngdiff = qAbs(tp.y() - center.y());
            }

            // draw tile
            if (rect.intersects(box)) {
                if (m_tilePixmaps.contains(tp))
                    p->drawPixmap(box, m_tilePixmaps.value(tp));
                else
                    p->drawPixmap(box, m_emptyTile);
            }
        }
    // marker
    if (mx != 0 && my != 0) {
        QIcon marker = QIcon(":/icons/map.png");
        // int dx= (mx+(latdiff*256.0)-40);
        // int dy= (my+(lngdiff*256.0)-40);
        //        for(int i=0;i<=100;i++)
        //   {
        p->drawPixmap((mx+(latdiff*256.0)-40), (my+(lngdiff*256.0)-40), marker.pixmap(40,40));
        // p->drawPixmap((dx+100), (dy+100), marker.pixmap(40,40));
        // p->drawPixmap((dx+50), (dy+50), marker.pixmap(40,40));

        // }
    }
}

//відповідає за визначення розміру тайлу, оновлює значення широти і довготи на основі нового центру мапи
void SlippyMap::pan(const QPoint &delta)
{
    QPointF dx = QPointF(delta) / qreal(tdim);
    QPointF center = tileForCoordinate(latitude, longitude, zoom) - dx;
    latitude = latitudeFromTile(center.y(), zoom);
    longitude = longitudeFromTile(center.x(), zoom);
    invalidate();
}

// відповідає за обробку відповіді від мережі після завантаження мапового тайла. Додає тайл в кеш, якщо він не був завантажений раніше
void SlippyMap::handleNetworkData(QNetworkReply *reply)
{
    QImage img;
    QPoint tp = reply->request().attribute(QNetworkRequest::User).toPoint(); // tile position
    QUrl url = reply->url(); // tile url
    if(!reply->error())
    {
        if(!img.load(reply, 0))
            img = QImage();
    }
    reply->deleteLater();
    m_tilePixmaps[tp] = QPixmap::fromImage(img); // add tile to cache
    if(img.isNull())
        m_tilePixmaps[tp] = m_emptyTile;
    emit updated(tileRect(tp));

    //очистка невикористованого простору
    QRect bound = m_tilesRect.adjusted(-2, -2, 2, 2);
    foreach (QPoint tp, m_tilePixmaps.keys()) {
        if(!bound.contains(tp))
            m_tilePixmaps.remove(tp);
    }
    download();
}

// визначає плитку, яка потребує завантаження, і створює URL-адресу для завантачення цієї плитки
void SlippyMap::download()
{
    QPoint grab(0,0);
    for(int x = 0; x <= m_tilesRect.width(); ++x)
        for (int y = 0; y <= m_tilesRect.height(); ++y)
        {
            QPoint tp = m_tilesRect.topLeft() + QPoint(x,y);
            if(!m_tilePixmaps.contains(tp))
            {
                grab = tp;
                break;
            }
        }
    if(grab == QPoint(0,0))
    {
        m_url = QUrl();
        return;
    }

    // URL for downloading tiles
    QString rootDirPath = QCoreApplication::applicationDirPath();
    QString path = "file:///" + rootDirPath + "/map/%1/%2/%3.png";
   // qDebug() << path;
    m_url = QUrl(path.arg(zoom).arg(grab.x()).arg(grab.y()));
    QNetworkRequest request;
    request.setUrl(m_url);
    request.setRawHeader("User-Agent", "The Qt Company (Qt) Graphics Dojo 1.0");
    request.setAttribute(QNetworkRequest::User, QVariant(grab));
    m_manager.get(request);

}

// обчислює прямокутника, який відповідає плитці (tile) на мапі
QRect SlippyMap::tileRect(const QPoint &tp)
{
    QPoint t = tp - m_tilesRect.topLeft();
    int x = t.x() * tdim + m_offset.x();
    int y = t.y() * tdim + m_offset.y();
    return QRect(x, y, tdim, tdim);

}















