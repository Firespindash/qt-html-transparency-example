#include "mainwindow.h"
#include <QApplication>
#include <QWidget>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    setAttribute(Qt::WA_TranslucentBackground);
    setAutoFillBackground(true);
    setStyleSheet("background: transparent; border: 1px solid transparent;");
}

MainWindow::~MainWindow()
{
}
