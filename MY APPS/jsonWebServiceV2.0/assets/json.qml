import bb.cascades 1.0
import bb.data 1.0

Page {
     Container {
       
        ListView {
            objectName: "listView"
            listItemComponents: [
                ListItemComponent {
                    StandardListItem {
                        id: item
                        title: ListItemData.CategoryName
                        description: ListItemData.CategoryID
                    }
                }
            ]
        }
    
    
    
    }	//end of container      

}	//end of page