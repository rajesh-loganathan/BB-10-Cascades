// Default empty project template
#include "ebook.hpp"

#include <bb/cascades/AbstractCover>
#include <bb/cascades/Container>
#include <bb/cascades/NavigationPane>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/SceneCover>
#include <bb/system/SystemToast>

using namespace bb::cascades;

EbooksApp::EbooksApp()

{
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    if (!qml->hasErrors()) {

           // The application NavigationPane is created from QML.
           NavigationPane *navPane = qml->createRootObject<NavigationPane>();

           if (navPane) {
               qml->setContextProperty("_navPane", navPane);

               // Set the main scene for the application to the NavigationPane.
               Application::instance()->setScene(navPane);

               // Set the Cover for the application running in minimized mode
               addAppCover();
           }
       }
}


void EbooksApp::addAppCover()
{

	QmlDocument *qmlCover = QmlDocument::create("asset:///AppCover.qml").parent(this);

    if (!qmlCover->hasErrors()) {
        // Create the QML Container from using the QMLDocument.
        Container *coverContainer = qmlCover->createRootObject<Container>();

        // Create a SceneCover and set the application cover
        SceneCover *sceneCover = SceneCover::create().content(coverContainer);
        Application::instance()->setCover(sceneCover);
    }
}

EbooksApp::~EbooksApp()
{
}


