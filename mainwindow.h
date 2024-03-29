#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtWidgets>
//#include <QtNetwork>
#include <lightmaps.h>
//#include <QtNetwork/qnetworksession.h>

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE
//class QNetworkSession;
class LightMaps;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:

    void on_actionNight_Mode_toggled();
    void on_actionRecenter_triggered();
    void on_actionChercassy_triggered();


    void on_zoomInButton_clicked();

    void on_zoomOutButton_clicked();

private:
    Ui::MainWindow *ui;
    LightMaps *map;
    //QNetworkSession *networkSession;
};
#endif // MAINWINDOW_H
