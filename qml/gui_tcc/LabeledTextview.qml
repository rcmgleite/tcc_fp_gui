import QtQuick 1.1

Rectangle {
    id: root
    property string label: "myLabel"
    property string value: "myValue"
    property string pointSize: "14"
    property string fontFamily: "OpenSans"
    width: 100
    height: 30
    color: "transparent"

    Text {
        id: textViewLabel
        text: label
        font.pointSize: pointSize
        font.family: fontFamily

    }

    Text {
        id: textViewValue
        anchors.left: textViewLabel.right
        anchors.leftMargin: 10
        text: value
        font.pointSize: pointSize
        font.family: fontFamily
    }
}
