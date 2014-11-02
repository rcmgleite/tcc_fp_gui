import QtQuick 1.1

Rectangle {
    id: root
    property string imgsource: image.source
    property url imgclicked: getImgChecked()
    property string maHeight: area.height
    property string maWidth: area.width
    property alias image: image
    property string label: "empty"
    property bool checked: false
    property string checkSimbol: "X"
    signal ckClicked

    height: 20
    width: 200
    color: "transparent"

    function getImgSource() {
        if (checkSimbol === "X")
            return "../../../gui_tcc/resources/images/checkbox_unchecked.png"
    }

    function getImgChecked() {
        if (checkSimbol === "X")
            return "../../../gui_tcc/resources/images/checkbox_checked.png"
    }


    Image {
        id: image
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        width: 20
        height: 20

        source: getImgSource()
        cache: false
    }

    Text {
        id: textlabel
        width: parent.width
        height: parent.height
        anchors.left: image.right
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        text: label
        font.pixelSize: 14
        font.family: "OpenSans"
        clip: true
    }

    MouseArea {
        id: area
        anchors.fill: parent
        onPressed: {
            checked = !checked
            ckClicked();
        }
    }

    states: [
        State {
            name: "unchecked"
            when: checked == true

            PropertyChanges {
                target: image
                source: imgclicked
            }
        }
    ]
}
