// Default empty project template
#include "matrix.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

sudoku::sudoku(bb::cascades::Application *app)
: QObject(app)
{
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
    qml->setContextProperty("app", this);

    AbstractPane *root = qml->createRootObject<AbstractPane>();
    app->setScene(root);
}

