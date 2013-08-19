import bb.cascades 1.0
import "Common"

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
            id: txtJava
            text: "import.java.h"
        }

    }
}
