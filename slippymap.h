#ifndef SLIPPYMAP_H
#define SLIPPYMAP_H

#include <QPixmap>
#include <QUrl>
#include <QWidget>
#include <QtWidgets>
#include <QDebug>
#include <QtNetwork>
#include <math.h>


#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

//      X це longitude  (довгота)
//      Y це latitude   (широта )

class QPainter;
class QNetworkReply;

class SlippyMap: public QObject
{
    Q_OBJECT

public:
    SlippyMap(QObject *parent = 0);
    void invalidate();
    void render(QPainter *p, const QRect &rect);
    void pan(const QPoint &delta);

    int width;
    int height;
    int zoom;
    qreal latitude;
    qreal longitude;

signals:
    void updated(const QRect &rect);

private slots:
    void download();
    void handleNetworkData(QNetworkReply *reply);

protected:
    QRect tileRect(const QPoint &tp);

private:
    QPoint m_offset;
    QRect m_tilesRect;
    QPixmap m_emptyTile;
    QHash<QPoint, QPixmap> m_tilePixmaps;
    QUrl m_url;
    QNetworkAccessManager m_manager;


};

#endif // SLIPPYMAP_H
