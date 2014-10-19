import QtQuick 1.1

Rectangle {
    id:button
    width: 100
    height: 40

    /*
    *  SIGNALS
    */
    signal buttonClick

    /*
    *  PROPERTIES
    */
    property string defaultButtonColor: "lightgreen"
    property string pressedButtonColor: "green"
    property string buttonLabelColor: "black"
    property string buttonLabel: "Click me!"

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
