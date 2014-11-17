import QtQuick 1.1

Rectangle {
    id: header
    width: parent.width
    height: 40

    property string pageName: "FPrint - Pagina inicial"

    Text {
        id: tccfp
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        text: pageName
        color: "#f7f7f7"
        font.pointSize: 14
        font.italic: true
    }

    Text {
        id: epusp
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 10
        text: qsTr("Escola Politecnica da Universidade de Sao Paulo")
        color: "#f7f7f7"
        font.pointSize: 14
        font.italic: true
    }

    gradient: Gradient {
        GradientStop { position: 0.0; color: "#3b5998" }
        GradientStop { position: 1.0; color: "#8b9dc3" }
    }
}
