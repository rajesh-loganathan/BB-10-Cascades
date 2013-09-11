import bb.cascades 1.0
import bb.data 1.0
import bb.system 1.0
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
           verticalAlignment: VerticalAlignment.Center
           horizontalAlignment: HorizontalAlignment.Center
           
           onClicked: {
               app.sendRequest(countryID.text);
               toast.body = app.temperature
               toast.show();               
           }
           
           attachedObjects: [
               SystemToast {
                   id: toast
                   body: "toasty"
               }
           ]
            
        }
       
       
       NetworkActivity {
           horizontalAlignment: HorizontalAlignment.Center
           
           active: app.active
       }
       
       Container {
           horizontalAlignment: HorizontalAlignment.Center
           visible: !app.active && app.succeeded
   /*   ListView {					// for group data model
           dataModel: app.model
           //objectName: "listView"
           //objectName: "list"
           listItemComponents: [
               ListItemComponent {
                   StandardListItem {
                       id: item
                       title: ListItemData.RegistrationResult
                       //description: ListItemData.CategoryID
                   }
               }
           ]
       }				*/
       
       ListView {
           objectName: "listView"
           listItemComponents: [
               ListItemComponent {
                   StandardListItem {
                       id: items
                       title: ListItemData.RegistrationResult
                       //description: ListItemData.TableName
                   }
               }
           ]
       }									
                
  Label {
      id: cnametxt1
      text: "Full String Result is   =  ' " + app.temperature + " '"
  }
  Label {
      id: cnametxt2
      text: "Company ID  =  " + app.description
  }
   
       
       }    
}	//end of container      
        
}	//end of page