// Default empty project template
import bb.cascades 1.0
import "Common"

// creates one page with a label
NavigationPane {
    id: nav

    property variant menu
    Menu.definition: menu
    
    
    Page {
    id: mainPage
    //background.color: 
    Container {
        id: bgContainer
        layout: DockLayout {}
        ImageView {
            imageSource: "asset:///images/main/background.amd"
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
            	}
        
        Container {
            topPadding: 10
            bottomPadding: 10
            
            ListView {
                id: ebookList
                dataModel: XmlDataModel {
                    source: "model/ebookmodel.xml"
                }
                listItemComponents: [
                    ListItemComponent {
                        type: "ebookitem"
                        EbookItem {
                            
                        }
                    }
                ]	// end of listItemComponent

                    onTriggered: {
                       
                        var chosenItem = dataModel.data(indexPath);
                        ebooksPage.source = chosenItem.file;
                        var page = ebooksPage.createObject();
                        page.title = chosenItem.title;
                        nav.push(page);
                    }	//end of Trigger

                }	//end of ListView - ebookList
        
        }	//end of container-topContainer
        
    }	//end of container-bgContainer
}	//end of page-mainPage

    attachedObjects: [
        ComponentDefinition {
            id: ebooksPage
            source: "Intro.qml"
        },
        ComponentDefinition {
            id: ebookMenu
            source: "EbookMenu.qml"
        }
    ]
    onCreationCompleted: {
        // We want to only display in portrait-mode in this view.
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.DisplayPortrait;

        // Create the app menu for the cookbook.
        menu = ebookMenu.createObject();
    }
    onTopChanged: {
        if (page == mainPage) {
            // We want to only display in portrait-mode in this view, so if it has been changed, let's reset it.
            OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.DisplayPortrait;
        }
    }
    onPopTransitionEnded: {
        // Transition is done destroy the Page to free up memory.
        page.destroy();
    }

}	//end of navigation pane-nav
