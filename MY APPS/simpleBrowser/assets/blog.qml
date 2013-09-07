import bb.cascades 1.0

Page {
    ScrollView {
        scrollViewProperties.pinchToZoomEnabled: true
        scrollViewProperties.scrollMode: ScrollMode.Both
        Container {
            background: Color.create ("#f8f8f8")
            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }
            WebView {
                url: "http://www.blackberrycascades.blogspot.com/"
            }
        }
    }
}


/*Container {
layout: StackLayout {
orientation: LayoutOrientation.LeftToRight
}
topPadding: 20
leftPadding: 10
horizontalAlignment: HorizontalAlignment.Center

TextField {
id: websiteurl
hintText: " Enter URL"
maxWidth: 360
horizontalAlignment: HorizontalAlignment.Center
}
TextField {
id: whatiwanttosearch
hintText: " Enter Your Text"
maxWidth: 350
horizontalAlignment: HorizontalAlignment.Center
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

}

Button {
id: searchID
maxWidth: 9100
text: " Google Search"

}
}*/