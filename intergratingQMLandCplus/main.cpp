#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backend.h"
#include <QtQml>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    /*the obj create from cpp*/
    MyTestClass annt;
    //annt.setUserName("ahihi");
    /*set context load the ui*/
    engine.rootContext()->setContextProperty("anthanh", &annt);
    /*load qml*/
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
