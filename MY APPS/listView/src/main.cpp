// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/Control>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/Page>
#include "ebook.hpp"

#include <Qt/qdeclarativedebug.h>

using ::bb::cascades::Application;
using namespace bb::cascades;

Q_DECL_EXPORT int main(int argc, char **argv)
{
    Application app(argc, argv);

    EbooksApp mainApp;

    QmlDocument *qml = QmlDocument::create("asset:///main.qml");

    qml->setContextProperty("_app", &app);


           AbstractPane *appPage = qml->createRootObject<AbstractPane>();
           Application::instance()->setScene(appPage);

    return Application::exec();

}
