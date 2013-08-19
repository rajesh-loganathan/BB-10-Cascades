// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/Control>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/Page>



#include "second.hpp"
#include "applicationui.hpp"

// include JS Debugger / CS Profiler enabler
// this feature is enabled by default in the debug build only
#include <Qt/qdeclarativedebug.h>

using namespace bb::cascades;

Q_DECL_EXPORT int main(int argc, char **argv)
{

    Application app(argc, argv);

    controller controll;

    QmlDocument *qml = QmlDocument::create("asset:///main.qml");

    	qml->setContextProperty("app", &controll);

       // Create the application scene
       AbstractPane *appPage = qml->createRootObject<AbstractPane>();
       Application::instance()->setScene(appPage);


    // we complete the transaction started in the app constructor and start the client event loop here
    return Application::exec();
    // when loop is exited the Application deletes the scene which deletes all its children (per qt rules for children)
}
