import bb.cascades 1.0

Page {
    id: pageTwoone
    
        Container {
    		background: Color.DarkGray
    		layout: DockLayout {}
          
    		Label {
            horizontalAlignment: HorizontalAlignment.Center
            text: "Last Page"
    		}
    		
    		
    	Container {
          layout: StackLayout {}
          horizontalAlignment: HorizontalAlignment.Center
          verticalAlignment: VerticalAlignment.Center
              					
     
        Button {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            text: qsTr("Goto Home Page")
           
            onClicked: {
                // show detail page when the button is clicked
                navigationPane.navigateTo(rootPage);
                		}
                }
            Button {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                text: qsTr("Goto Back")

                onClicked: {
                    // show detail page when the button is clicked
                    navigationPane.pop();
                }

            }
        }
    }
}