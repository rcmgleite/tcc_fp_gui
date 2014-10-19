import QtQuick 1.1

Rectangle {
    property string label: "myLabel"
    property string value: "myValue"
    width: 100
    height: 50

    Text {
        id: textViewLabel
        text: label
    }

    Text {
        id: textViewValue
        anchors.left: textViewLabel.right
        anchors.leftMargin: 10
        text: value
    }
}
