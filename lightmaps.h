

#ifndef LIGHTMAPS_H
#define LIGHTMAPS_H

#include <QBasicTimer>
#include <QWidget>
#include <QtCore>
#include <QtWidgets>
#include <QtNetwork>
#include <QString>

#include <math.h>
#include "slippymap.h"

#ifndef M_PI // Check if M_PI is not defined
#define M_PI 3.14159265358979323846
#endif

#define HOLD_TIME 701 // Duration (in milliseconds) for holding tap for magnifying glass feature
#define MAX_MAGNIFIER 229 // Maximum size of the magnifier

class SlippyMap;

class LightMaps: public QWidget // визначає клас LightMaps, який є підкласом QWidget.
{
    Q_OBJECT //це макрос, який дозволяє використовувати функції слотів та сигналів у класі LightMaps.

public:
    LightMaps(QWidget *parent = 0); // Constructor
    void setCenter(qreal lat, qreal lng);  // Function to set the center coordinates of the map
    void zoomIn();
    void zoomOut();

public slots:
    void toggleNightMode();  // Slot function to toggle night mode

protected:
    // Functions for handling events
    void resizeEvent(QResizeEvent *);
    void paintEvent(QPaintEvent *event);
    void timerEvent(QTimerEvent *);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *);
    void keyPressEvent(QKeyEvent *event);
    void wheelEvent(QWheelEvent *event);


private slots:
    void updateMap(const QRect &r); // Slot function to update the map

private:
      // Member variables
    SlippyMap *m_normalMap;
    bool pressed;
    bool snapped;
    QPoint pressPos;
    QPoint dragPos;
    QBasicTimer tapTimer;
    QPixmap maskPixmap;
    bool invert;
    int zoom;
};

#endif
