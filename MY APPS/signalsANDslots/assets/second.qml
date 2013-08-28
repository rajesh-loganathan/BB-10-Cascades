import bb.cascades 1.2
//import "main.qml"

Page {
    titleBar: TitleBar {
        id: secondPage
        title: "ERS"
    }
    Container {
        id: mainContainer2
        background: Color.LightGray
        layout: StackLayout {
        
        }
        layoutProperties: StackLayoutProperties {
            spaceQuota: 2
        }
        Container {
            id: firstContainer2
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
                
            }
            leftPadding: 20
            bottomPadding: 10
            topPadding: 20
            
           
            
            Label {
                
                id: cname2
                text: "Company Name"
                textStyle.textAlign: TextAlign.Center
            
            }
            Label {
                
                id: cnametxt2
                text: app.companyname
               
            }
        }
        Container {
            id: secondContainer2
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight    
            }
            leftPadding: 20
            bottomPadding: 10
            
            Label {
                id: hr2
                text: "HR Name"
                textStyle.textAlign: TextAlign.Center
            
            }
            Label {
                id: hrtxt2
                text: app.hr
               
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
            Label {
                id: emailtxt2
                text: app.emailid
            
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
            Label {
                id: addresstxt
               text: app.address
                

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
            Label {
                id: phnotxt
                text: app.phoneno
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
            Label {
                id: pwdtxt
                
                text: app.password
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
            Label {
                id: vhclnotxt
                
               text: app.vnumber
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
            Label {
                id: vhclmodeltxt
                text: app.vmodel
            }
        }
        Container {
            topPadding: 40
            layout: StackLayout {
            
            }
            horizontalAlignment: HorizontalAlignment.Center
            
            Button {
                id: next
                text: "BACK"
                onClicked: {
                   navigation.pop();
                }
            
            }
        }
    
    }
}
