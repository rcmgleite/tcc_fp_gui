import QtQuick 1.1

Rectangle {
    id: stagesScreen
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
        text: "Etapa: "
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
            source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/no_image.png"
            cache: false
        }


        LabeledTextview {
            id: textNoPreNoAdaptExecTime
            anchors.top: noPreNoAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: ""
        }

    }

    Image {
        id: separetor1
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: noPreNoAdaptContainer.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
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
            source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/no_image.png"
            cache: false
        }

        LabeledTextview {
            id: textWithPreNoAdaptExecTime
            anchors.top: withPreNoAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: ""
        }
    }

    Image {
        id: separetor2
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: withPreNoAdaptContainer.right
        anchors.leftMargin: 50
        width: 1
        height: 250
        source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
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
            source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/no_image.png"
            cache: false
        }

        LabeledTextview {
            id: textWithPreWithAdaptExecTime
            anchors.top: withPreWithAdaptImage.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 50
            label: "Tempo(s): "
            value: ""
        }
    }

    //bottom buttons
    CustomButtom{
        id: nextStageButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        width: 120
        buttonLabel: "Próxima Etapa"
        buttonLabelColor: "black"
        onButtonClick: {
            if (stagesScreen.state === "default")
                stagesScreen.state = "windowing"
            else if (stagesScreen.state === "windowing")
                stagesScreen.state = "equalization"
            else if (stagesScreen.state === "equalization")
                stagesScreen.state = "gabor"
            else if (stagesScreen.state === "gabor")
                stagesScreen.state = "binarization"
            else if (stagesScreen.state === "binarization")
                stagesScreen.state = "minutiaExtraction"
            else if (stagesScreen.state === "minutiaExtraction")
                stagesScreen.state = "matching"
        }
    }

    CustomButtom{
        id: previousStageButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: nextStageButton.left
        anchors.rightMargin: 5
        width: 120
        buttonLabel: "Etapa Anterior"
        buttonLabelColor: "black"
        onButtonClick: {
            if (stagesScreen.state === "matching")
                stagesScreen.state = "minutiaExtraction"
            else if (stagesScreen.state === "minutiaExtraction")
                stagesScreen.state = "binarization"
            else if (stagesScreen.state === "binarization")
                stagesScreen.state = "gabor"
            else if (stagesScreen.state === "gabor")
                stagesScreen.state = "equalization"
            else if (stagesScreen.state === "equalization")
                stagesScreen.state = "windowing"
            else if (stagesScreen.state === "windowing")
                stagesScreen.state = "default"
        }
    }

    CustomButtom{
        id: metricsButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 30
        buttonLabel: "Métricas"
        buttonLabelColor: "black"
        onButtonClick: {
            console.log(">metricsButton called");
            core.metricsScreenRequest();
        }
    }

    //STATES
    states: [
        State{
            name: "default"

            PropertyChanges {
                target: stageName
                text: "Etapa: Não executado"
            }
            PropertyChanges {
                target: previousStageButton
                visible: false
            }

            PropertyChanges {
                target: nextStageButton
                visible: false
            }
        },

        State{
            name: "windowing"
            PropertyChanges {
                target: stageName
                text: "Etapa: Janelamento"
            }

            PropertyChanges {
                target: nextStageButton
                visible: true
            }

            PropertyChanges {
                target: previousStageButton
                visible: false
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getWindowingTime()
            }

        },

        State{
            name: "equalization"
            PropertyChanges {
                target: stageName
                text: "Etapa: Normalização"
            }

            PropertyChanges {
                target: previousStageButton
                visible: true
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getEqualizationTime()
            }
        },

        State{
            name: "gabor"
            PropertyChanges {
                target: stageName
                text: "Etapa: Filtro de gabor"
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getGaborFilterTime()

            }
        },

        State{
            name: "binarization"
            PropertyChanges {
                target: stageName
                text: "Etapa: Binarização"
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getBinarizationTime()

            }
        },

        State{
            name: "minutiaExtraction"
            PropertyChanges {
                target: stageName
                text: "Etapa: Extração de minúcias"
            }

            PropertyChanges {
                target: nextStageButton
                visible: true
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getMinutiaeExtractionTime()

            }
        },

        State{
            name: "matching"
            PropertyChanges {
                target: stageName
                text: "Etapa: Matching"
            }

            PropertyChanges {
                target: nextStageButton
                visible: false
            }

            PropertyChanges {
                target: textWithPreNoAdaptExecTime
                value: core.getMatchingTime()
            }
        }
    ]

    Component.onCompleted: {
        stagesScreen.state = "default"
    }


    Connections {
        target: core
        onExecutionComplete: {
            stagesScreen.state = "windowing"
        }
    }
}
