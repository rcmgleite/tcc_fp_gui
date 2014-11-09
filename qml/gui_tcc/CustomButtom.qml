import QtQuick 1.1

Rectangle {
    id:button
    width: 100
    height: 40
    radius: 10

    /*
    *  SIGNALS
    */
    signal buttonClick

    /*
    *  PROPERTIES
    */
    property string defaultButtonColor: "#8b9dc3"
    property string pressedButtonColor: "#3b5998"
    property string buttonLabelColor: "black"
    property string buttonLabel: "Click me!"
    property string fontSize : "12"

    color: defaultButtonColor
    Rectangle{
    color: "transparent"
    anchors.fill: parent

        Text{
            id:label
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: buttonLabelColor
            text: buttonLabel
            font.pointSize: fontSize
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            enabled: true
            onPressed: {
                button.color = pressedButtonColor
                buttonClick();
            }
            onReleased:
                button.color = defaultButtonColor
        }
    }
}
