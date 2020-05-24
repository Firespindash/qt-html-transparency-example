// Compile it with 'mkdir build && cd build';
// 'qmake ../window-content.pro -spec linux-g++' and 'make'
#include "mainwindow.h"

#include <QApplication>
#include <QWebEngineView>
#include <QWebPage>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));

    return app.exec();
}
