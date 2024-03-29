#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    map = new LightMaps(this);

    //setCentralWidget(map);
    ui->mapLayout->addWidget(map);

    map->setFocus();

}

MainWindow::~MainWindow()
{
    delete map;
    delete ui;
}


void MainWindow::on_actionNight_Mode_toggled()
{
    map->toggleNightMode(); //(latitude,longitude)
}


void MainWindow::on_actionRecenter_triggered()
{
    map->setCenter(32.44134, 49.06432);
}


void MainWindow::on_actionChercassy_triggered()
{
    map->setCenter(49.44134, 32.06432);
}


void MainWindow::on_zoomInButton_clicked()
{
    map->zoomIn();
}


void MainWindow::on_zoomOutButton_clicked()
{
    map->zoomOut();
}

