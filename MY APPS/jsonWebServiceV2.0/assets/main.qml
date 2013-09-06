import bb.cascades 1.0
import bb.data 1.0
import "controls"

Page {
    content: Container {
        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
                  
        }
        
        TextField  {
            id: countryID
            hintText: "Enter Country ID  eg:'1'"  
            maxWidth: 400
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.textAlign: TextAlign.Center

        }
        
        
       Button {
           id: btn
           
           text: "Send JSON Request"
           onClicked: {
               app.sendRequest(countryID.text);
               
           }
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
        }
       
       NetworkActivity {
           horizontalAlignment: HorizontalAlignment.Center
           
           active: app.active
       }
       
       Container {
           horizontalAlignment: HorizontalAlignment.Center
           visible: !app.active && app.succeeded
       ListView {
           dataModel: app.model
           objectName: "listView"
           listItemComponents: [
               ListItemComponent {
                   StandardListItem {
                       id: item
                       title: ListItemData.CategoryName
                       //description: ListItemData.CategoryID
                   }
               }
           ]
       }
   }
       
        
}	//end of container      
        
}	//end of page