import bb.cascades 1.2
NavigationPane {
    id: navigation
    

Page {
    titleBar: TitleBar {
        id: mainPage
        title: "ERS"
    }
    Container {
        onCreationCompleted: {
            cnametxt.text = app.companyname
            hrtxt.text = app.hr
            emailtxt.text = app.emailid
            addresstxt.text = app.address
            phnotxt.text = app.phoneno
            pwdtxt.text = app.password
            vhclnotxt.text = app.vnumber
            vhclmodeltxt.text = app.vmodel
        
           
            
        }
        attachedObjects: ComponentDefinition {
            id: nextPage
            source: "second.qml"
        }
        
        id: mainContainer
        background: Color.LightGray
        layout: StackLayout {
            
        }
        layoutProperties: StackLayoutProperties {
            spaceQuota: 2
        }
        Container {
            id: firstContainer
            layout: StackLayout {
     orientation: LayoutOrientation.LeftToRight
    				}
            leftPadding: 20
            bottomPadding: 10
            topPadding: 20
            
            Label {
                id: cname
                text: "Company Name"
                textStyle.textAlign: TextAlign.Center

                }
            TextField {
                id: cnametxt                             
                hintText: "Company Name"
                maxWidth: 450
                translationX: 50.0
            }
        }
        Container {
            id: secondContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: hr
                text: "HR Name"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: hrtxt
                hintText: "HR Name"
                maxWidth: 555
                translationX: 160.0
                }
        }
        Container {
            id: thridContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: email
                text: "E-Mail"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: emailtxt
                 
                hintText: "Email ID"
                inputMode: TextFieldInputMode.EmailAddress

                maxWidth: 605
                translationX: 210.0
            }
        }
        Container {
            id: fourthContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: address
                text: "Address"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: addresstxt
                 
                hintText: "Address"
                maxWidth: 575
                translationX: 180.0
            }
        }
        Container {
            id: fifthContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: phno
                text: "Phone No"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: phnotxt
                 
                hintText: "Phone No"
                maxWidth: 555
                translationX: 160.0
            }
        }
        Container {
            id: sixthContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: pwd
                text: "Password"
                textStyle.textAlign: TextAlign.Center
                
            
            }
            TextField {
                id: pwdtxt
                 
                hintText: "Password"
                inputMode: TextFieldInputMode.Password

                maxWidth: 555
                translationX: 160.0
            }
        }
        Container {
            id: seventhContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: vhclno
                text: "Vehicle No"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: vhclnotxt
                 
                hintText: "Vehicle No"
                maxWidth: 545
                translationX: 150.0
            }
        }
        Container {
            id: eightContainer
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: vhclmodel
                text: "Vehicle Model"
                textStyle.textAlign: TextAlign.Center
            
            }
            TextField {
                id: vhclmodeltxt
                 
                hintText: "Vehicle Model"
                maxWidth: 488
                translationX: 95
            }
        }
        Container {
            topPadding: 40
            layout: StackLayout {
                
            }
            horizontalAlignment: HorizontalAlignment.Center
            
            Button {
                id: next
                text: "NEXT"
                onClicked: {
                    var page = nextPage.createObject();
                    navigation.push(page);
                    app.clickedButton(cnametxt.text,hrtxt.text,emailtxt.text,addresstxt.text,phnotxt.text,pwdtxt.text,vhclnotxt.text,vhclmodeltxt.text);
                   
                    
                }
                
               
            }
        }
        
    }
}
}