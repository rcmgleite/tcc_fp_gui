import QtQuick 1.1

Rectangle {
    id: upperMainScreen
    width: 980
    height: 660
    color: "transparent"

    Text {
        id: inputImagePathLabel
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        width: parent.width
        font.family: "OpenSans"
        font.pointSize: 18
        text: "1) Escolha para a imagem de entrada:"

    }

    TextEdit{
        id: inputImagePath
        x: inputImagePathLabel.x
        anchors.top: inputImagePathLabel.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 30
        font.family: "OpenSans"
        font.pointSize: 12
        width: parent.width
        wrapMode: TextEdit.Wrap
        color: "black"
        focus: true
        text: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/no_image.png"
    }

    Image {
        id: inputImage
        x: inputImagePath.x
        anchors.top: inputImagePath.bottom
        anchors.topMargin: 20
        width: 100
        height: 100
        source: inputImagePath.text
        cache: false
    }

    //2th
    Text {
        id: systemModeLabel
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: inputImage.bottom
        anchors.topMargin: 20
        width: parent.width
        font.family: "OpenSans"
        font.pointSize: 18
        text: "2) Escolha do modo do sistema:"
    }

    Checkbox {
        id:chkboxModeDefault
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.top: systemModeLabel.bottom
        anchors.topMargin: 10
        label: "Padrão"
        onCkClicked: {
            if (checked){
                chkboxModeRigid.checked = false
                chkboxModeTolerant.checked = false
            }
        }
    }

    Checkbox {
        id:chkboxModeRigid
        anchors.left: chkboxModeDefault.right
        anchors.leftMargin: 40
        anchors.top: systemModeLabel.bottom
        anchors.topMargin: 10
        label: "Rigoroso"
        onCkClicked: {
            if (checked){
                chkboxModeDefault.checked = false
                chkboxModeTolerant.checked = false
            }
        }
    }

    Checkbox {
        id:chkboxModeTolerant
        anchors.left: chkboxModeRigid.right
        anchors.leftMargin: 40
        anchors.top: systemModeLabel.bottom
        anchors.topMargin: 10
        label: "Tolerante"
        onCkClicked: {
            if (checked){
                chkboxModeRigid.checked = false
                chkboxModeDefault.checked = false
            }
        }
    }

    //3th
    Text {
        id: executionAndResultsLabel
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: chkboxModeTolerant.bottom
        anchors.topMargin: 20
        width: 300
        font.family: "OpenSans"
        font.pointSize: 18
        text: "3) Execuçao e resultados:"
    }

    Text {
        id: textResults
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.top: executionAndResultsLabel.bottom
        anchors.topMargin: 20
        width: 100
        font.family: "OpenSans"
        font.pointSize: 14
        text: "i) Resultado:"
    }

    Rectangle{
        id: textResultsResult
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.top: textResults.bottom
        anchors.topMargin: 10
        width: 120
        height: 30
        border.color: "black"
        border.width: 2
        radius: 5
        color: "yellow"
        Text {
            id: textResultValue
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Não executado")
        }
    }

    Text {
        id: textFeedbackLabel
        anchors.left: parent.left
        anchors.leftMargin: 30
        width: 100
        height: 20
        anchors.top: textResultsResult.bottom
        anchors.topMargin: 20
        font.pointSize: 14
        font.family: "OpenSans"
        text: "ii)Feedback:"
    }


    Checkbox {
        id:chkboxResultFalse
        x: textResults.x
        anchors.top: textFeedbackLabel.bottom
        anchors.topMargin: 10
        label: "Resultado falso"
        onCkClicked: {
            if (checked){
                chkboxResultTrue.checked = false
            }
        }
    }

    Checkbox {
        id:chkboxResultTrue
        anchors.left: chkboxResultFalse.right
        anchors.leftMargin: 20
        anchors.top: textFeedbackLabel.bottom
        anchors.topMargin: 10
        label: "Resultado verdadeiro"
        onCkClicked: {
            if (checked){
               chkboxResultFalse.checked = false
            }
        }
    }

    CustomButtom{
        id: sendFeedbackButton
        x: textResults.x
        anchors.top: chkboxResultTrue.bottom
        anchors.topMargin: 10
        width: 150
        buttonLabel: "Enviar feedback"
        buttonLabelColor: "black"
        onButtonClick: {
            //TODO
            console.log("Enviando feedback")
        }
    }

    CustomButtom{
        id: executeButton
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        width: 300
        fontSize: "18"
        height: 50
        buttonLabel: "Executar"
        buttonLabelColor: "black"
        onButtonClick: {
            console.log("executando core agora!");
            if (chkboxModeDefault.checked)
                core.execute(0);
            else if (chkboxModeRigid.checked)
                core.execute(1);
            else if (chkboxModeTolerant.checked)
                core.execute(2);
        }
    }

    Connections {
        target: core
        onExecutionComplete: {
            var accepted = core.getAccepted();
            if (accepted === true){
                textResultValue.text = "Aceito"
                textResultsResult.color = "#32CD32"
            }
            else{
                textResultValue.text = "Recusado"
                textResultsResult.color = "red"
            }
        }
    }

    Component.onCompleted: {
        chkboxModeDefault.checked = true;
        chkboxResultFalse.checked = true;
    }

}
