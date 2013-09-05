import bb.cascades 1.0
import bb.data 1.0

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
        
    }
}