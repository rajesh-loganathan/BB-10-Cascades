import bb.cascades 1.0


 Page {
    id: calc

    Container {
        id: root
        
        function add(get)
        {
              get = parseInt(get);
              var total = 0;
              
              total = total + get;
              return total;
        } 

        Container {
            topPadding: 225
            horizontalAlignment: HorizontalAlignment.Center

            TextArea {
                id: view
                hintText: "Enter Values"
                inputMode: TextAreaInputMode.Text
                horizontalAlignment: HorizontalAlignment.Center
                maximumLength: 10
                maxWidth: 350
                verticalAlignment: VerticalAlignment.Center

            }

        }
        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            //verticalAlignment: VerticalAlignment.Top
            horizontalAlignment: HorizontalAlignment.Center

            Button {
                id: b1
                text: "1"
                maxHeight: 1
                maxWidth: 1
                onClicked: {
                    view.text = (view.text + b1.text);
                }

                //horizontalAlignment: HorizontalAlignment.Center
            }
            Button {
                id: b2
                text: "2"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b2.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
            Button {
                id: b3
                text: "3"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b3.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }

        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            horizontalAlignment: HorizontalAlignment.Center

            Button {
                id: b4
                text: "4"
                maxHeight: 1
                maxWidth: 1
                onClicked: {
                    view.text = (view.text + b4.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center
            }
            Button {
                id: b5
                text: "5"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b5.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
            Button {
                id: b6
                text: "6"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b6.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            horizontalAlignment: HorizontalAlignment.Center

            Button {
                id: b7
                text: "7"
                maxHeight: 1
                maxWidth: 1
                onClicked: {
                    view.text = (view.text + b7.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center
            }
            Button {
                id: b8
                text: "8"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b8.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
            Button {
                id: b9
                text: "9"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b9.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            horizontalAlignment: HorizontalAlignment.Center

            Button {
                id: plus
                text: "+"
                maxHeight: 1
                maxWidth: 1
                
                onClicked: {
                   
                    
                    view.text += " " + root.add(view.text);

                }
                //horizontalAlignment: HorizontalAlignment.Center
            }
            Button {
                id: b0
                text: "0"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    view.text = (view.text + b0.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
            Button {
                id: minus
                text: "-"
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                   // view.text = "";
                    view.text = app.clickedMinus(view.text);
                }
                //horizontalAlignment: HorizontalAlignment.Center

            }
        }
        Container {
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight

            }
            horizontalAlignment: HorizontalAlignment.Center

            Button {
                id: clr
                text: "CLR"
                maxHeight: 1
                maxWidth: 230
                onClicked: {
                    view.text = "";
                }

                //horizontalAlignment: HorizontalAlignment.Center
            }
            Button {
                id: equal
                text: "="
                maxHeight: 1
                maxWidth: 1
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center

                //horizontalAlignment: HorizontalAlignment.Center

            }
        }

    }

}

