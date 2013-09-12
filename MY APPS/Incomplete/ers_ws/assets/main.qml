import bb.cascades 1.2
import bb.system 1.2
import "controls"
NavigationPane {
    id: navigation
    
    
    Page {
        titleBar: TitleBar {
            id: mainPage
            title: "ERS"
        }
        
        
        
        Container {
            
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
                id: ninthContainer
                topPadding: 40
                layout: StackLayout {
                
                }
                horizontalAlignment: HorizontalAlignment.Center
                
                
                Label{
                    id: urltxt
                    text: "http://livetracking.entermobileapps.com/Mobile/Service1.svc/Mobile/CompanyRegistration?CompanyName=" + cnametxt.text + "&HRName="+ hrtxt.text +"&Address="+ addresstxt.text +"&Email="+ emailtxt.text +"&Phoneno="+ phnotxt.text +"&Password="+ pwdtxt.text +"&VehicleNumber="+ vhclnotxt.text +"&VehicleModel="+ vhclmodeltxt.text +"&DevicID=1282678";
                    visible: false 
                
                }
                
                
                
                Button {
                    id: next
                    text: "NEXT"
                    onClicked: {
                       
                        app.clickedButton(cnametxt.text,hrtxt.text,emailtxt.text,addresstxt.text,phnotxt.text,pwdtxt.text,vhclnotxt.text,vhclmodeltxt.text,urltxt.text);
                        app.sendRequest();
                        networkresult.urlresult();
                                                                  
                    }
                    
                   
                }
                
                NetworkActivity {
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    active: app.active
                }
                
                Container {
                    id: networkresult
                    horizontalAlignment: HorizontalAlignment.Center
                    visible: !app.active && app.succeeded
                    
                    Label  {
                        id: urlresulttxt
                        text: app.urlResult
                        visible: app.urlResult=="EMAIL ID ALREADY EXISTS"
                        textStyle.color: Color.Red
                    }     
                               
                    function urlresult()
                    {
                        if (app.urlResult != "EMAIL ID ALREADY EXISTS" && app.urlResult != null )
                        
                        {
                            toast.body = "Success"
                            toast.show();
                            networkresult.newpage();
                        }
                        else if (app.urlResult == "EMAIL ID ALREADY EXISTS") {
                            toast.body = app.urlResult
                            toast.show();
                        }
                        
                    }
                    
                    function newpage()
                    {
                        var page = nextPage.createObject();
                        navigation.push(page); 
                    }
                    attachedObjects: [
                        ComponentDefinition {
                            id: nextPage
                            source: "second.qml"
                        }
                    ]               
                                    
                } 
                
                
                
                
                
                
                
                
                            }	//end of ninth container
            
   
        }	//END OF MAIN CONTAINER
        
        attachedObjects: [
            
            SystemToast {
                id: toast                
            }
        
        ]
    }	// end of page
}	//end of navigation