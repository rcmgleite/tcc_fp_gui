#include <QApplication>
#include <QtDeclarative/QDeclarativeContext>
#include <a.out.h>
#include <QDeclarativeView>
#include "core.hpp"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

     QDeclarativeView view;
    /*
    *   Instância a classe test para que possamos depois colocá-la no QML
    */

    Core core;

    /*
    *   Adiciona o objeto test no contexto do QML
    */
    view.rootContext()->setContextProperty("core", &core);
    view.setSource(QUrl::fromLocalFile("qml/gui_tcc/main.qml"));
    view.show();

    return app.exec();
}
