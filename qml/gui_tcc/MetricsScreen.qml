import QtQuick 1.1

Rectangle{
    width: 1300
    height: 700
    color: "#dfe3ee"

    Header{
        id: header
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        pageName: "FPoli - Metricas"
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

    Component.onCompleted: {
        metricsTable.val1x1 = core.getFar1()
        metricsTable.val2x1 = core.getFrr1()
        metricsTable.val3x1 = core.getTar1()
        metricsTable.val4x1 = core.getTrr1()

        metricsTable.val1x2 = core.getFar2()
        metricsTable.val2x2 = core.getFrr2()
        metricsTable.val3x2 = core.getTar2()
        metricsTable.val4x2 = core.getTrr2()

        metricsTable.val1x3 = core.getFar32()
        metricsTable.val2x3 = core.getFrr32()
        metricsTable.val3x3 = core.getTar32()
        metricsTable.val4x3 = core.getTrr32()

        metricsTable.val1x4 = core.getFar31()
        metricsTable.val2x4 = core.getFrr31()
        metricsTable.val3x4 = core.getTar31()
        metricsTable.val4x4 = core.getTrr31()

        metricsTable.val1x5 = core.getFar33()
        metricsTable.val2x5 = core.getFrr33()
        metricsTable.val3x5 = core.getTar33()
        metricsTable.val4x5 = core.getTrr33()
    }
}
