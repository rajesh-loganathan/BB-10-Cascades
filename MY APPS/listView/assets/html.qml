import bb.cascades 1.0
import "Common"
import bb.system 1.0

EbookPage {
    EbookContainer {
        layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
        }
        topPadding: 10
        leftPadding: 10
        bottomPadding: 10
        rightPadding: 10

        Label {
            id: txtCppbook
            multiline: true
            text: "\t Program\n
            <html>
            <body>Hi</body>
            </html>
            
            
            
            "
        }

        Button {
            id: btnClick
            text: "Click Me"
            onClicked: {
                toast.body = "Thank You"
                toast.show();
            }
            horizontalAlignment: HorizontalAlignment.Center
            

            attachedObjects: [
                SystemToast {
                    id: toast
                    body: "Toasty"
                }
            ]
        }

    }
}
