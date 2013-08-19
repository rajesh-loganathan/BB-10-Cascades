// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/AbstractPane>
#include <bb/cascades/QmlDocument>


#include "matrix.hpp"

// include JS Debugger / CS Profiler enabler
// this feature is enabled by default in the debug build only
#include <Qt/qdeclarativedebug.h>

using namespace bb::cascades;


Q_DECL_EXPORT int main(int argc, char **argv)
{

    Application app(argc, argv);

    QmlDocument *qml = QmlDocument::create("asset:///main.qml");

        qml->setContextProperty("_app", &app);


               AbstractPane *appPage = qml->createRootObject<AbstractPane>();
               Application::instance()->setScene(appPage);

        return Application::exec();
}
