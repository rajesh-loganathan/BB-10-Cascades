// Default empty project template
import bb.cascades 1.0

import bb.system 1.0


// creates one page with a label
Page {
    titleBar: TitleBar {
        title: "LEVEL 1"
    }
    Container {
        id: rootContainer
        layout: DockLayout {
        }

        ImageView {
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill

            imageSource: "asset:///images/background.png"
        }
        
        Container {
            id: closeContainer
            //rightPadding:
            horizontalAlignment: HorizontalAlignment.Right
            rightPadding: 20.0
            topPadding: 30.0
            ImageButton {
                defaultImageSource: "asset:///images/close1.png"

                onClicked: {
                    _app.quit();
                }
                pressedImageSource: "asset:///images/close2.png"

            }

        }
        

        Container {
        id: topdownContainer
        //background: Color.DarkGray
        topPadding: 200
        leftPadding: 200
        property int cookingProgress: 0
        
        
       
       
       

        Container {
            id: row1
            background: Color.Gray
            topPadding: 10.0
            leftPadding: 10.0
            rightPadding: 10.0
            bottomPadding: 10.0

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            
            TextField {
                id: txt11
                text: " "
                maxHeight: 2
                maxWidth: 100
               
                onTextChanged:
                {
                    topContainer.cookingProgress = 50;//topContainer.cookingProgress + 1;
                }
                
                onTextChanging: 
                {
                    topContainer.cookingProgress = 75;//topContainer.cookingProgress + 1;
                }
                
            }
                
            TextField {
                id: txt12
                text: "2"
                maxHeight: 2
                maxWidth: 100
                textStyle.textAlign: TextAlign.Center
                textStyle.color: Color.DarkBlue
                enabled: false

            }
            TextField {
                id: txt13
                text: " "
                maxHeight: 2
                maxWidth: 100
                
                onTextChanged: {
                    if (text != " " || text != "") 
                    {
                        topContainer.cookingProgress = topContainer.cookingProgress + 1;
                    }
                                   

                }

            }
            

        }
        
        
        Container {
            id: row2
            background: Color.Gray
            topPadding: 10.0
            leftPadding: 10.0
            rightPadding: 10.0
            bottomPadding: 10.0

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            TextField {
                id: txt21
                text: " "
                maxHeight: 2
                maxWidth: 100

                onTextChanging: {
                    topContainer.cookingProgress = topContainer.cookingProgress + 1;

                }
            

            }
            TextField {
                id: txt22
                text: " "
                maxHeight: 2
                maxWidth: 100
                
                onTextChanged: {
                    topContainer.cookingProgress = topContainer.cookingProgress + 1;

                }

            }
            TextField {
                id: txt23
                text: "2"
                maxHeight: 2
                maxWidth: 100
                textStyle.textAlign: TextAlign.Center
                textStyle.color: Color.DarkBlue
                focusHighlightEnabled: true
                enabled: false

            }

        }
        
        Container {
            id: row3
            background: Color.Gray
            topPadding: 10.0
            leftPadding: 10.0
            rightPadding: 10.0
            bottomPadding: 10.0

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }

            TextField {
                id: txt31
                text: "2"
                maxHeight: 2
                maxWidth: 100
                textStyle.textAlign: TextAlign.Center
                textStyle.color: Color.DarkBlue
                enabled: false
            }
            TextField {
                id: txt32
                text: " "
                maxHeight: 2
                maxWidth: 100
                

                onTextChanged: {
                    if (txt32.text == 3) 
                    {
                        topContainer.cookingProgress = topContainer.cookingProgress + 1;

                    }
                    
                    

                }
                
            }
            TextField {
                id: txt33
                text: " "
                maxHeight: 2
                maxWidth: 100

                onTextChanging: {
                    if (txt33.text == 1) {
                        topContainer.cookingProgress = topContainer.cookingProgress + 1;

                    }
                }

            }

        }
        
        Container {
            id:row4
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            topPadding: 10
            
            Button {
                id: btnresult
                text: "RESULT"
                maxWidth: 178
                onClicked: {
                    
                   if (txt11.text == " " || txt12.text == " " || txt13.text == " " || txt21.text == " " || txt22.text == " " || txt23.text == " " || txt31.text == " " || txt32.text == " " || txt33.text == " ") 
                    {
                        txtresult.text = "ENTER ALL FIELDS"
                        txtscoree.text = " "
                        txtscore.text = " "
                    }
                    
                    else{			
                    if (txt11.text == 1 && txt12.text == 2 && txt13.text == 3 && txt21.text == 3 && txt22.text == 1 && txt23.text == 2 && txt31.text == 2 && txt32.text == 3 && txt33.text == 1) 
                    {
                        txtresult.text = "YOU WON"
                        txtscoree.text = "YOUR SCORE "
                        txtscore.text = 10
                    } 
                    
                    
                    else 
                    {
                        txtresult.text = "YOU LOSE"
                        txtscoree.text = "YOUR SCORE "
                        txtscore.text = 0
                    } 
                
                   
                }
                   
                
            }
                
            }
            Button {

                id: btnreset
                text: "RESET"
                maxWidth: 160
                onClicked: {
                    
                    txt11.text = " "
                    txt13.text = " "
                    txt21.text = " "
                    txt22.text = " "
                    txt32.text = " "
                    txt33.text = " "
                    txtscore.text = " "
                    txtscoree.text = " "
                    txtresult.text = " "
                }
            }
        }
        
        Container {
            id: row5
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            topPadding: 10
            bottomPadding: 10
            leftPadding: 5

            Label {

                id: txtresult
                text: " "
                    textStyle.color: Color.Black

                }

    }

        Container {
            id: row6
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            topPadding: 10
            bottomPadding: 10
            leftPadding: 5

            Label {

                id: txtscoree
                text: " "
                    textStyle.color: Color.Black

                }

            Label {

                id: txtscore
                 text: " "
                    textStyle.color: Color.Cyan

                }
        }

        Container {
            id: row7
            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }
            topPadding: 10
            bottomPadding: 10
            leftPadding: 5
            
            Button {

                id: txtnext
                text: "NEXT"
                enabled: txtresult.text == "YOU WON"
                
               onClicked: {
                    toast.body="Sorry Your Trial Expired"
                    toast.show();
                }
                
               attachedObjects: [
                    SystemToast {
                        id: toast
                        body: " "
                    }
                 ] 

            }
}
      
        ProgressIndicator {
                id: progressbar
               
                
                fromValue: 0
                toValue: 6
                maxWidth: 360
                value: topContainer.cookingProgress

            onValueChanged: {
                if(txt11.text == " " || txt12.text == " " || txt13.text == " " || txt21.text == " " || txt22.text == " " || txt23.text == " " || txt31.text == " " || txt32.text == " " || txt33.text == " ")
                {
                    progressbar.state = ProgressIndicatorState.Indeterminate
                    topContainer.cookingProgress = topContainer.cookingProgress + 1
                }
                /*    if (value == 0) 
                    {
                        
                        // Value 0 means that the progress is undecided
                        progressbar.state = ProgressIndicatorState.Indeterminate
                    }	*/
                

                }
            
        }

        
        
}
}
}