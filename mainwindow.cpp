#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    setAttribute(Qt::WA_TranslucentBackground);
    setAutoFillBackground(true);
    setStyleSheet("background: transparent;");
}

MainWindow::~MainWindow()
{
}

