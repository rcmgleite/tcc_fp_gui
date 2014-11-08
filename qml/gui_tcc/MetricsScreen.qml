import QtQuick 1.1

Rectangle{
    width: 1200
    height: 700
    color: "#eeeeee"

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
