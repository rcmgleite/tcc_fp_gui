import QtQuick 1.1

Rectangle{
    width: 1200
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

    CustomButtom{
        id: backButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 30
        buttonLabel: "Voltar"
        buttonLabelColor: "black"
        onButtonClick: {
            core.initalScreenRequest();
        }
    }
}
