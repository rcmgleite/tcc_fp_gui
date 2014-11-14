import QtQuick 1.1

Rectangle {
    id: upperMainScreen
    width: parent.width
    height: 300
    color: "transparent"

    Text {
        id: inputImagePathLabel
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 20
        width: 300
        font.family: "OpenSans"
        font.pointSize: 20
        text: "Imagem de entrada:"

    }

    TextEdit{
        id: inputImagePath
        x: inputImagePathLabel.x
        anchors.top: inputImagePathLabel.bottom
        anchors.topMargin: 20
        font.family: "OpenSans"
        font.pointSize: 12
        width: 300
        wrapMode: TextEdit.Wrap
        color: "black"
        focus: true
        text: "/home/priscila/tcc_fp_gui/resources/images/fingerprints/original.tif"
    }

    Image {
        id: inputImage
        x: inputImagePath.x
        anchors.top: inputImagePath.bottom
        anchors.topMargin: 20
        width: 150
        height: 150
        source: inputImagePath.text
        cache: false
    }

    Image {
        id: separetor1
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: inputImagePathLabel.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/priscila/tcc_fp_gui/resources/images/list_vertical_limit.png"
    }

    //2th item on grid
    Text {
        id: systemMode
        anchors.left: inputImagePathLabel.right
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.topMargin: 20
        width: 300
        font.family: "OpenSans"
        font.pointSize: 20
        text: "Modo do Sistema"
    }

    Checkbox {
        id:chkboxModeDefault
        x: systemMode.x
        anchors.top: systemMode.bottom
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
        x: systemMode.x
        anchors.top: chkboxModeDefault.bottom
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
        x: systemMode.x
        anchors.top: chkboxModeRigid.bottom
        anchors.topMargin: 10
        label: "Tolerante"
        onCkClicked: {
            if (checked){
                chkboxModeRigid.checked = false
                chkboxModeDefault.checked = false
            }
        }
    }

    CustomButtom{
        id: executeButton
        x: systemMode.x
        anchors.top: chkboxModeTolerant.bottom
        anchors.topMargin: 10
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

    Image {
        id: separetor2
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: systemMode.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/priscila/tcc_fp_gui/resources/images/list_vertical_limit.png"
    }

    //3th item on gird
    Text {
        id: textResults
        anchors.left: systemMode.right
        anchors.leftMargin: 100
        anchors.top: parent.top
        anchors.topMargin: 20
        width: 300
        font.family: "OpenSans"
        font.pointSize: 20
        text: "Resultado:"
    }

    Rectangle{
        id: textResultsResult
        x: textResults.x
        width: 100
        height: 20
        anchors.top: textResults.bottom
        anchors.topMargin: 20
        border.color: "black"
        border.width: 2
        radius: 5
        color: "#32CD32"
        Text {
            id: textResultValue
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Aceito")
        }
    }

    Text {
        id: textFeedbackLabel
        x: textResults.x
        width: 100
        height: 20
        anchors.top: textResultsResult.bottom
        anchors.topMargin: 20
        font.pixelSize: 20
        font.family: "OpenSans"
        text: qsTr("Feedback:")
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
        x: textResults.x
        anchors.top: chkboxResultFalse.bottom
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
        buttonLabel: "Enviar"
        buttonLabelColor: "black"
        onButtonClick: {
            //TODO
            console.log("Enviando feedback")
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
        textResultValue.text = "Não executado"
        textResultsResult.color = "yellow"
    }

}
