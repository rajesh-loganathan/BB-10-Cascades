// Default empty project template
#include "calc.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

calculator::calculator(bb::cascades::Application *app)
: QObject(app)
{
     QmlDocument *qml = QmlDocument::create("asset:///main.qml");
     qml->setContextProperty("app", this);
     AbstractPane *root = qml->createRootObject<AbstractPane>();
     app->setScene(root);
}

