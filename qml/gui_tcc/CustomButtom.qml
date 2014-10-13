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
    property string buttonColor: "green"
    property string buttonLabelColor: "black"
    property string buttonLabel: "Click me!"

    color: buttonColor
    Rectangle{
    opacity: 0.7
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
                buttonClick();
            }
        }
    }
}
