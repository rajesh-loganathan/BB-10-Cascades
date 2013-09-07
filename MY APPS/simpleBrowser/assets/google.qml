import bb.cascades 1.0


    Page {
        
        Container {
            id: topContainer
            layout: StackLayout {
                orientation: orientation.TopToBottom
            }
           
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                leftPadding: 10
                topPadding: 20
                horizontalAlignment: HorizontalAlignment.Center
            
            TextField {
                id: websiteurl
                hintText: " Enter URL"
                maxWidth: 360
                horizontalAlignment: HorizontalAlignment.Center
            }
            TextField {
                id: websitesearch
                hintText: " Enter Your Text"
                maxWidth: 350
                horizontalAlignment: HorizontalAlignment.Center
            }
            Label {
                id: addressbar
                visible: false 
                text: "www.google.com"
            }
            Label {
                id: googlesearch
                visible: false 
                text: "www.google.com/search?q=" + websitesearch.text
            }
        }
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                layoutProperties: StackLayoutProperties {
                    spaceQuota: 1
                }
                leftPadding: 20
                topPadding: 10
                horizontalAlignment: HorizontalAlignment.Center
                
            Button {
                    id: urlID
                    text: " GO"
                    maxWidth: 250
                    onClicked: {
                        addressbar.text = websiteurl.text
                    }
                   
                }
            
            Button {
                id: searchID
                maxWidth: 9100
                text: " Google Search"
                onClicked: {
                   
                   addressbar.text = googlesearch.text
                }

            }
            
        }
        
        Container {
            id: webView
            background: Color.create ("#f8f8f8")
            layout: StackLayout {
            orientation: LayoutOrientation.TopToBottom
            }
            ScrollView {
            scrollViewProperties.pinchToZoomEnabled: true
            scrollViewProperties.scrollMode: ScrollMode.Both
        WebView {
            id: webaddress
            url: "http://" + addressbar.text
        }
        
        }
    }	// end of webView container 
}	//end of topContainer
}	//end of page