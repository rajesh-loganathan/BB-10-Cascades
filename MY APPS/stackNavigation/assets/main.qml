import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    backButtonsVisible: false
    peekEnabled: false
    
    
    Page {
        id: rootPage
        Container {
            background: Color.LightGray

            layout: DockLayout {
                
            }
            Label {
                text: "First page"
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
            }
        }
    
        actions: [
            ActionItem {
                title: "Next page"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    var page = pageDefinition.createObject();
                    navigationPane.push(page);
                    
                }

                attachedObjects: ComponentDefinition {
                    id: pageDefinition
                    source: "PageTwo.qml"
                }
            }
        ]
    }
    onPopTransitionEnded: {
        page.destroy();
    }
   

}