import QtQuick 1.1

Rectangle {
    width: parent.width
    height: 400
    color: "transparent"

    Text {
        id: stageName
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "OpenSans"
        font.pointSize: 20
        text: "Etapa de Extração de Minúcias"
    }

    //NO PRE-PROCESSING - NO ADAPT
    Rectangle{
        id: noPreNoAdaptContainer
        anchors.top: stageName.bottom
        anchors.left: parent.left
        anchors.leftMargin: 50
        width: 300


        Text {
            id: noPreNoAdaptLabel
            anchors.top: parent.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            font.family: "OpenSans"
            font.pointSize: 14
            text: "*Sem pré-processamento\n*Sem Adaptatividade"
        }

        Image {
            id: noPreNoAdaptImage
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: noPreNoAdaptLabel.bottom
            anchors.topMargin: 10
            width: 150
            height: 150
            source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/no_image.png"
            cache: false
        }


        LabeledTextview {
            id: textNoPreNoAdaptExecTime
            anchors.top: noPreNoAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: "5"
        }

    }

    Image {
        id: separetor1
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: noPreNoAdaptContainer.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_vertical_limit.png"
    }

    Rectangle{
        id: withPreNoAdaptContainer
        anchors.top: stageName.bottom
        anchors.left: noPreNoAdaptContainer.right
        anchors.leftMargin: 100
        width: 300
        Text {
            id: withPreNoAdaptLabel
            anchors.top: parent.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            font.family: "OpenSans"
            font.pointSize: 14
            text: "*Com pré-processamento\n*Sem Adaptatividade"
        }

        Image {
            id: withPreNoAdaptImage
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: withPreNoAdaptLabel.bottom
            anchors.topMargin: 10
            width: 150
            height: 150
            source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/no_image.png"
            cache: false
        }

        LabeledTextview {
            id: textWithPreNoAdaptExecTime
            anchors.top: withPreNoAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: "5"
        }
    }

    Image {
        id: separetor2
        anchors.top: parent.top
        anchors.topMargin: 60
        anchors.left: withPreNoAdaptContainer.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_vertical_limit.png"
    }

    Rectangle{
        id: withPreWithAdaptContainer
        anchors.top: stageName.bottom
        anchors.left: withPreNoAdaptContainer.right
        anchors.leftMargin: 100
        width: 300

        Text {
            id: withPreWithAdaptLabel
            anchors.top: parent.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            font.family: "OpenSans"
            font.pointSize: 14
            text: "*Com pré-processamento\n*Com Adaptatividade"
        }

        Image {
            id: withPreWithAdaptImage
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: withPreWithAdaptLabel.bottom
            anchors.topMargin: 10
            width: 150
            height: 150
            source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/no_image.png"
            cache: false
        }

        LabeledTextview {
            id: textWithPreWithAdaptExecTime
            anchors.top: withPreWithAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: "5"
        }
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
