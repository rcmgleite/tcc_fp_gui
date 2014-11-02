import QtQuick 1.1

Rectangle {
    width: parent.width
    height: 400
    color: "transparent"

    Text {
        id: stageName
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "OpenSans"
        font.pointSize: 20
        text: "Etapa de Extração de Minúcias"
    }



    //lastItem
    CustomButtom{
        id: nextStageButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        buttonLabel: "Próxima Etapa"
        buttonLabelColor: "black"
        onButtonClick: {
            console.log("Próxima etapa clicado")
        }
    }
}
