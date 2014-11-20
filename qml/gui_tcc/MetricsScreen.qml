import QtQuick 1.1

Rectangle{
    width: 1300
    height: 700
    color: "#dfe3ee"

    Header{
        id: header
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        pageName: "FPrint - Metricas"
    }

    Menu{
        id:menu
        anchors.top: header.bottom
        anchors.left: parent.left
        color: "white"
        pageSelected: "metricsScreen"
    }

    Table5x5 {
        id: metricsTable
        anchors.left: menu.right
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.right: parent.right
        height: 220
    }

    //legenda
    Text {
        id: legendasLabel
        anchors.top: metricsTable.bottom
        anchors.topMargin: 40
        anchors.left: menu.right
        anchors.leftMargin: 20
        text: qsTr("Legendas:")
        font.family: "OpenSans"
        font.pointSize: 20
        font.italic: true
    }

    Text {
        id: sys1Exmpl
        anchors.top: legendasLabel.bottom
        anchors.topMargin: 20
        anchors.left: menu.right
        anchors.leftMargin: 40
        text: qsTr("*Sistema 1: Sem pré-processamento / sem adaptatividade")
        font.family: "OpenSans"
        font.pointSize: 14
        font.italic: true
    }

    Text {
        id: sys2Exmpl
        anchors.top: sys1Exmpl.bottom
        anchors.topMargin: 20
        anchors.left: menu.right
        anchors.leftMargin: 40
        text: qsTr("*Sistema 2: Com pré-processamento / sem adaptatividade")
        font.family: "OpenSans"
        font.pointSize: 14
        font.italic: true
    }


    Text {
        id: sys3Exmpl
        anchors.top: sys2Exmpl.bottom
        anchors.topMargin: 20
        anchors.left: menu.right
        anchors.leftMargin: 40
        text: qsTr("*Sistema 3: Com pré-processamento / com adaptatividade")
        font.family: "OpenSans"
        font.pointSize: 14
        font.italic: true
    }

    CustomButtom{
        id: backButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 30
        buttonLabel: "Voltar"
        buttonLabelColor: "black"
        onButtonClick: {
            core.algorithmScreenRequest();
        }
    }

//    Component.onCompleted: {
//        metricsTable.val1x1 = core.get
//    }
}
