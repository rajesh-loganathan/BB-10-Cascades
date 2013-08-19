// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    Container {
        layout: StackLayout {}

        TextArea {
            id: view1
            hintText: "Enter Values"
            inputMode: TextAreaInputMode.Text
            horizontalAlignment: HorizontalAlignment.Center
            maximumLength: 10
            maxWidth: 350
            verticalAlignment: VerticalAlignment.Center
            translationY: 100.0
        }
        TextArea {
            id: view2
            hintText: "Enter Values"
            inputMode: TextAreaInputMode.Text
            horizontalAlignment: HorizontalAlignment.Center
            maximumLength: 10
            maxWidth: 350
            verticalAlignment: VerticalAlignment.Center
            translationY: 100.0

        }

        
        Button {
        id: add
        text: "ADD"
        maxHeight: 1
        maxWidth: 200
        
        onClicked: {
            view3.text = app.clickedButton(view1.text,view2.text);

            }
            translationX: 140.0
            translationY: 124.0
        }
        
        Button {
            id: sub
            text: "SUB"
            maxHeight: 1
            maxWidth: 200
            
            onClicked: {
                view3.text = view1.text - view2.text ;
            }
            translationY: 1.0
            translationX: 390.0
        }

        TextArea {
            id: view3
            hintText: "ANSWER"
            
            inputMode: TextAreaInputMode.Text
            horizontalAlignment: HorizontalAlignment.Center
            maximumLength: 10
            maxWidth: 350
            verticalAlignment: VerticalAlignment.Center
            

        }

    }
}

