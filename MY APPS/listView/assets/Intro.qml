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
            id: intro
            text: "\t\t\tWelcome to ebook"
        }

        Label {
            multiline: true
            text: "\t Contents:\n
            		1.Java\n
            		2.C++\n
            		3.HTML\n
            		4.CSS\n
            		5.Java Script\n
            		6.PHP\n
            		7.HTML5\n
            		8.CSS3\n           
            
            "
        }
        Button {
            text: qsTr("Quit")
            horizontalAlignment: HorizontalAlignment.Center
            onClicked: {
                _app.quit();
            }
        }

    }
}

       