import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    Page {
        Container {
            layout: StackLayout  {
                orientation: orientation.TopToBottom
            }
            layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }
            topPadding: 500
           
        Button {
            id: buttonID1
          
          horizontalAlignment: HorizontalAlignment.Center
          verticalAlignment: VerticalAlignment.Center
            onClicked: {
                var blogpage = goToWebView.createObject();
                navigationPane.push(blogpage);
            }
            attachedObjects: ComponentDefinition {
                id: goToWebView
                source: "blog.qml"
            }
            text: "Go To My Blog"
        }
        
        Button {
            id: buttonID2
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            onClicked: {
                var googlepage = goToGoogle.createObject();
                navigationPane.push(googlepage);
            }
            attachedObjects: ComponentDefinition {
                id: goToGoogle
                source: "google.qml"
            }
            text: "Online Search"
        }
    
    
        
        
        
        
        
        
    }	// end of container
}	// end of page
  }	// end of navigation pane