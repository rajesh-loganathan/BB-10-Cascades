import bb.cascades 1.0

Page {
    id: page
    Container {
        id: topContainer
    
        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
        }

        Container {
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }
        background: Color.Cyan
        topPadding: 10
        leftPadding: 10
        rightPadding: 10
        bottomPadding: 10
        
        TextField {
            id: txt1
            text: " "
            
            
        }
        
        TextField {
            id: txt2
            text: " "

        }}

    
    Container {
        id: secondContainer
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
            
        }
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        
        
        Button {
            id: add
            text: "ADD"
            onClicked: {
                
                result.text = app.addbtn(txt1.text,txt2.text)
                
            }
        
            
        }
        
        TextField {
            id: result
            text:" "
        }
        
    }
}}
