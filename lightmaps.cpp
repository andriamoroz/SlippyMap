
#include "lightmaps.h"


// Constructor implementation
LightMaps::LightMaps(QWidget *parent)
    : QWidget(parent), pressed(false), snapped(false), invert(false) // Initializing member variables in constructor's initializer list
{
    // Initialize normal  maps
    m_normalMap = new SlippyMap(this); // Creating instance of SlippyMap for normal map
    zoom = m_normalMap->zoom;
    connect(m_normalMap, SIGNAL(updated(QRect)), SLOT(updateMap(QRect))); // Connecting updated() signal of normal map to updateMap() slot
}

// Function to set the center coordinates of the map
void LightMaps::setCenter(qreal lat, qreal lng)
{
    // Set center coordinates for both normal and large maps
    m_normalMap->latitude = lat; // Setting latitude for normal map
    m_normalMap->longitude = lng; // Setting longitude for normal map
    m_normalMap->invalidate(); // Invalidating normal map to trigger update. It essentially tells Qt that the contents of the specified area are no longer valid and need to be redrawn

}

// Slot function to toggle night mode
void LightMaps::toggleNightMode()
{
    // Toggle invert flag for night mode
    invert = !invert; // Toggling invert flag
    update(); // Triggering update to apply changes
}

// Slot function to update the map
void LightMaps::updateMap(const QRect &r)
{
    update(r); // Triggering update with specific rectangle
}


// Event handler for resize event
void LightMaps::resizeEvent(QResizeEvent *)
{
    // Update map sizes on resize
    m_normalMap->width = width(); // Setting width for normal map
    m_normalMap->height = height(); // Setting height for normal map
    m_normalMap->invalidate(); // Invalidating normal map to trigger update

}

// Event handler for paint event
void LightMaps::paintEvent(QPaintEvent *event)
{
    // Paint the normal map and additional elements (e.g., text, magnifying glass)
    // based on the current state (zoomed or not)
    QPainter p; // Creating QPainter for painting
    p.begin(this); // Begin painting on the widget
    m_normalMap->render(&p, event->rect()); // Rendering normal map
    qreal lat = m_normalMap->latitude;
    qreal lng = m_normalMap->longitude;

    QString text = QString("zoom: %1\nlat: %2\nlng: %3").arg(zoom).arg(lat).arg(lng); //
    p.setPen(Qt::black); // Setting pen color to black
    p.drawText(rect(),  Qt::AlignBottom | Qt::TextWordWrap,
               text); // Drawing attribution text
    p.end(); // End painting


       // // If invert mode is active, invert the colors of the widget
    if (invert) {
        QPainter p(this); // Create a QPainter for drawing on the widget
        p.setCompositionMode(QPainter::CompositionMode_Difference); // Set composition mode to difference
        p.fillRect(event->rect(), Qt::white); // Fill the rectangle with white color
        p.end(); // End painting
    }
}

// Timer event handler
void LightMaps::timerEvent(QTimerEvent *)
{
    update(); // Triggering update to apply changes
}

// Event handler for mouse press event
void LightMaps::mousePressEvent(QMouseEvent *event)
{
    // Check if left mouse button is pressed
    if (event->buttons() != Qt::LeftButton)
        return; // Return if other than left button is pressed
    pressed = snapped = true; // Set pressed and snapped flags to true
    pressPos = dragPos = event->pos(); // Set press position and drag position to current mouse position
    tapTimer.stop(); // Stop tap timer
    tapTimer.start(HOLD_TIME, this); // Start tap timer with hold time duration
}

// Event handler for mouse move event
void LightMaps::mouseMoveEvent(QMouseEvent *event)
{
    // Check if any mouse button is pressed
    if (!event->buttons())
        return; // Return if no button is pressed
        // Handle mouse move event if not zoomed
    if (!pressed || !snapped) {
            // If not pressed or not snapped, calculate delta and pan the normal map
            QPoint delta = event->pos() - pressPos; // Calculate delta between current position and press position
            pressPos = event->pos(); // Update press position to current position
            m_normalMap->pan(delta); // Pan the normal map by delta
            return; // Return
    }
    else {
            // If pressed and snapped, handle snap behavior
            const int threshold = 10; // Set threshold for snapping
            QPoint delta = event->pos() - pressPos; // Calculate delta between current position and press position
            if (snapped) {
                // If already snapped, check if delta is within threshold
                snapped &= delta.x() < threshold; // Check if delta x is less than threshold
                snapped &= delta.y() < threshold; // Check if delta y is less than threshold
                snapped &= delta.x() > -threshold; // Check if delta x is greater than negative threshold
                snapped &= delta.y() > -threshold; // Check if delta y is greater than negative threshold
            }
            if (!snapped)
                tapTimer.stop(); // Stop tap timer if not snapped

            // dragPos = event->pos(); // Update drag position to current position
        // update(); // Trigger update
    }
}

// Event handler for mouse release event
void LightMaps::mouseReleaseEvent(QMouseEvent *)
{
    update(); // Trigger update
}

// Event handler for key press event
void LightMaps::keyPressEvent(QKeyEvent *event)
{

    // Handle key press event if not zoomed
    if (event->key() == Qt::Key_Left)
        m_normalMap->pan(QPoint(20, 0)); // Pan normal map left
    if (event->key() == Qt::Key_Right)
        m_normalMap->pan(QPoint(-20, 0)); // Pan normal map right
    if (event->key() == Qt::Key_Up)
        m_normalMap->pan(QPoint(0, 20)); // Pan normal map up
    if (event->key() == Qt::Key_Down)
        m_normalMap->pan(QPoint(0, -20)); // Pan normal map down
    if (event->key() == Qt::Key_Z || event->key() == Qt::Key_Select) {
        dragPos = QPoint(width() / 2, height() / 2); // Set drag position to center of widget
    }
}

void LightMaps::wheelEvent(QWheelEvent *event)
{
    if(event->angleDelta().y() > 0)
        zoomIn();
    else
        zoomOut();
}

void LightMaps::zoomIn()
{
    if(zoom >= 14)
        return;
    ++zoom;
    m_normalMap->zoom = zoom;
    m_normalMap->invalidate();
    update();

}

void LightMaps::zoomOut()
{
    if(zoom <= 10)
        return;
    --zoom;
    m_normalMap->zoom = zoom;
    m_normalMap->invalidate();
    update();
}
