// Default empty project template
#include <bb/cascades/Application>
#include <bb/data/DataSource>

#include "calci.hpp"

// include JS Debugger / CS Profiler enabler
// this feature is enabled by default in the debug build only
#include <Qt/qdeclarativedebug.h>

using namespace bb::cascades;

using ::bb::cascades::Application;

Q_DECL_EXPORT int main(int argc, char** argv)
{
    Application app(argc, argv);

    controller mainApp;

    return Application::exec();
}
