import QtQuick 1.1

Rectangle {
    id: stagesScreen
    width: 1080
    height: 530
    color: "transparent"

    Rectangle{
        id: executionContainer
        color: "transparent"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 480

        Text {
            id: stageName
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "OpenSans"
            font.pointSize: 20
            text: "Etapa: "
        }

        //bottom buttons
        CustomButtom{
            id: nextStageButton
            anchors.top: stageName.top
            anchors.right: parent.right
            anchors.rightMargin: 20
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
            anchors.top: stageName.top
            anchors.left: parent.left
            anchors.leftMargin: 10
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


        //NO PRE-PROCESSING - NO ADAPT
        Rectangle{
            id: noPreNoAdaptContainer
            anchors.top: stageName.bottom
            anchors.left: executionContainer.left
            width: 300

            Text {
                id: noPreNoAdaptLabel
                anchors.top: parent.bottom
                anchors.topMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 20
                font.family: "OpenSans"
                font.pointSize: 14
                text: "*Sem pré-processamento\n*Sem Adaptatividade"
            }

            Image {
                id: noPreNoAdaptImage
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: noPreNoAdaptLabel.bottom
                anchors.topMargin: 10
                width: 230
                height: 230
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/original.tif"
                cache: false
            }

            Table5x1{
                id: table5x1_1
                anchors.top: noPreNoAdaptImage.bottom
                anchors.topMargin: 32
                anchors.left: parent.left
            }
            Image {
                id: separetor1
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.right: parent.right
                width: 1
                height: 408
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
            }

        }

        Rectangle{
            id: withPreNoAdaptContainer
            anchors.top: stageName.bottom
            anchors.left: noPreNoAdaptContainer.right
            anchors.leftMargin: 20
            width: 300

            Text {
                id: withPreNoAdaptLabel
                anchors.top: parent.bottom
                anchors.topMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 20
                font.family: "OpenSans"
                font.pointSize: 14
                text: "*Com pré-processamento\n*Sem Adaptatividade"
            }

            Image {
                id: withPreNoAdaptImage
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: withPreNoAdaptLabel.bottom
                anchors.topMargin: 10
                width: 230
                height: 230
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/original.tif"
                cache: false
            }

            Table5x1{
                id: table5x1_2
                anchors.top: withPreNoAdaptImage.bottom
                anchors.topMargin: 32
                anchors.left: parent.left
                anchors.leftMargin: -20
            }

            Image {
                id: separetor2
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.right: parent.right
                width: 1
                height: 408
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
            }
        }

        Rectangle{
            id: withPreWithAdaptContainer
            anchors.top: stageName.bottom
            anchors.left: withPreNoAdaptContainer.right
            anchors.leftMargin: 20
            width: 300

            Text {
                id: withPreWithAdaptLabel
                anchors.top: parent.bottom
                anchors.topMargin: 20
                anchors.left: parent.left
                anchors.leftMargin: 20
                font.family: "OpenSans"
                font.pointSize: 14
                text: "*Com pré-processamento\n*Com Adaptatividade"
            }

            Image {
                id: withPreWithAdaptImage
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: withPreWithAdaptLabel.bottom
                anchors.topMargin: 10
                width: 230
                height: 230
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/original.tif"
                cache: false
            }

            Table5x3 {
                id:table5x3
                anchors.top: withPreWithAdaptImage.bottom
                anchors.topMargin: 12
                anchors.left: parent.left
                anchors.leftMargin: -18
            }

        }

        Image {
            id: bottomSeparator
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 10
            width: 1050
            height: 1
            source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
        }
    }

    //FEEDBACK CONTAINER
    Rectangle{
        id: feedbackContainer
        anchors.top: executionContainer.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: 50
        color: "transparent"

        Text {
            id: feedbackLabel
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.family: "OpenSans"
            font.pointSize: 20
            font.italic: true
            text: "Feedback"
        }

        Checkbox {
            id:chkboxResultFalse
            anchors.left: feedbackLabel.right
            anchors.leftMargin: 20
            anchors.top: feedbackLabel.top
            anchors.topMargin: 5
            label: "Usuário não cadastrado"
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
            anchors.top: feedbackLabel.top
            anchors.topMargin: 5
            label: "Usuário cadastrado"
            onCkClicked: {
                if (checked){
                   chkboxResultFalse.checked = false
                }
            }
        }

        CustomButtom{
            id: sendFeedbackButton
            anchors.left: chkboxResultTrue.right
            anchors.leftMargin: 20
            anchors.top: feedbackLabel.top
            anchors.topMargin: -5
            width: 150
            buttonLabel: "Enviar feedback"
            buttonLabelColor: "black"
            onButtonClick: {
                if (chkboxResultTrue.checked) {
                    core.setFeedback(true);
                }
                else {
                    core.setFeedback(false);
                }
            }
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
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/whiteborder23.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/whiteborder23.tif"
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
                target: table5x1_1
                val1x1: ""
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: ""
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getWindowingTime3()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getWindowingTime3()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getWindowingTime3()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()


            }

        },

        State{
            name: "equalization"
            PropertyChanges {
                target: stageName
                text: "Etapa: Normalização"
            }

            PropertyChanges {
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/equalized2.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/equalized3.tif"
            }

            PropertyChanges {
                target: previousStageButton
                visible: true
            }


            PropertyChanges {
                target: table5x1_1
                val1x1: ""
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: core.getEqualizationTime2()
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getEqualizationTime3()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getEqualizationTime3()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getEqualizationTime3()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()


            }
        },

        State{
            name: "gabor"
            PropertyChanges {
                target: stageName
                text: "Etapa: Filtro de gabor"
            }

            PropertyChanges {
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/equalized2.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/gabor3.tif"
            }

            PropertyChanges {
                target: table5x1_1
                val1x1: ""
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: ""
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getGaborFilterTime3()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getGaborFilterTime3()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getGaborFilterTime3()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()
            }

        },

        State{
            name: "binarization"
            PropertyChanges {
                target: stageName
                text: "Etapa: Binarização"
            }

            PropertyChanges {
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/binarized2.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/binarized3.tif"
            }

            PropertyChanges {
                target: table5x1_1
                val1x1: ""
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: core.getBinarizationTime2()
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getBinarizationTime3()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getBinarizationTime3()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getBinarizationTime3()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()
            }

        },

        State{
            name: "minutiaExtraction"
            PropertyChanges {
                target: stageName
                text: "Etapa: Extração de minúcias"
            }

            PropertyChanges {
                target: noPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae1.tif"
            }

            PropertyChanges {
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae2.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae3.tif"
            }

            PropertyChanges {
                target: nextStageButton
                visible: true
            }

            PropertyChanges {
                target: table5x1_1
                val1x1: core.getMinutiaeExtractionTime1()
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: core.getMinutiaeExtractionTime2()
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getMinutiaeExtractionTime3()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getMinutiaeExtractionTime3()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getMinutiaeExtractionTime3()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()
            }

        },

        State{
            name: "matching"
            PropertyChanges {
                target: stageName
                text: "Etapa: Matching"
            }

            PropertyChanges {
                target: noPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae1.tif"
            }

            PropertyChanges {
                target: withPreNoAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae2.tif"
            }

            PropertyChanges {
                target: withPreWithAdaptImage
                source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/fingerprints/minutiae3.tif"
            }


            PropertyChanges {
                target: nextStageButton
                visible: false
            }

            PropertyChanges {
                target: table5x1_1
                val1x1: core.getMatchingTime1()
                val2x1: core.getAccepted1()
                val3x1: core.getTotalTime1()
                val4x1: core.getMinutiaeQuantity1()
                val5x1: core.getMinutiaeQuality1()
            }

            PropertyChanges {
                target: table5x1_2
                val1x1: core.getMatchingTime2()
                val2x1: core.getAccepted2()
                val3x1: core.getTotalTime2()
                val4x1: core.getMinutiaeQuantity2()
                val5x1: core.getMinutiaeQuality2()
            }

            PropertyChanges {
                target: table5x3
                val1x1: core.getMatchingTime31()
                val2x1: core.getAccepted32()
                val3x1: core.getTotalTime32()
                val4x1: core.getMinutiaeQuantity3()
                val5x1: core.getMinutiaeQuality3()

                val1x2: core.getMatchingTime32()
                val2x2: core.getAccepted31()
                val3x2: core.getTotalTime31()
                val4x2: core.getMinutiaeQuantity3()
                val5x2: core.getMinutiaeQuality3()

                val1x3: core.getMatchingTime33()
                val2x3: core.getAccepted33()
                val3x3: core.getTotalTime33()
                val4x3: core.getMinutiaeQuantity3()
                val5x3: core.getMinutiaeQuality3()
            }
        }
    ]

    Component.onCompleted: {
        stagesScreen.state = core.getCurrState()
    }


    Connections {
        target: core
        onExecutionComplete: {
            stagesScreen.state = "windowing"
        }

        onSignalWindowingStepRequest: {
            stagesScreen.state = "windowing"
        }

        onSignalEqualizationStepRequest:{
            stagesScreen.state = "equalization"
        }
        onSignalGaborStepRequest:{
            stagesScreen.state = "gabor"
        }
        onSignalBinarizationStepRequest:{
            stagesScreen.state = "binarization"
        }
        onSignalMinutiaExtractionStepRequest: {
            stagesScreen.state = "minutiaExtraction"
        }
        onSignalMatchingStepRequest: {
            stagesScreen.state = "matching"
        }


    }
}
