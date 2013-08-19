import bb.cascades 1.0

Page {
    id: pageTwo
    Container {
        background: Color.Gray
        layout: DockLayout {

        }
        Label {
            text: "Second page"
            horizontalAlignment: HorizontalAlignment.Center
        }
        
        
        Container {
            layout: StackLayout {
                
            }
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            Button {
           
            text: qsTr("Next Page")
            imageSource: "asset:///images/picture1thumb.png"
            onClicked: {
                // show detail page when the button is clicked
                var page = getSecondPage();
                console.debug("pushing detail " + page)
                navigationPane.push(page);
            }
            property Page secondPage
            function getSecondPage() {
                if (! secondPage) {
                    secondPage = secondPageDefinition.createObject();
                }
                return secondPage;
            }
            attachedObjects: [
                ComponentDefinition {
                    id: secondPageDefinition
                    source: "PageTwoOne.qml"
                }
            ]
        }
        
        Button {
           text: "Previous Page"
           onClicked: {
               navigationPane.pop();
           }

        }

    }
}
    
    
    
    
/*    ------------- Use this Code If back button visibility is "True"-----------------
  
 
    paneProperties: NavigationPaneProperties {
        
        backButton: ActionItem {
            title: "Back"
         //   imageSource: "asset:///back.png"
            onTriggered: {
                navigationPane.pop();
            }
            }
    }					*/




 }
    
    

