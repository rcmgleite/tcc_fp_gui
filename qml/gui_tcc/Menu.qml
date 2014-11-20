import QtQuick 1.1

Rectangle {
    id: menu
    width: 220
    height: 660
    color: "white"
    z:1
    property string pageSelected: "algorithmScreen"
    property bool hasExecuted: core.getHasExecuted()
    property string pageSelectedColor: "#dfe3ee"

    //ALGORITHM SCREEN
    Rectangle{
        id: algorithmScreen
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        color: "transparent"
        height: 40
        MouseArea {
            id: algorithmScreenmouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true

            onEntered: {
                algorithmScreen.color = "#dfe3ee"
            }
            onExited: {
                algorithmScreen.color = "white"
            }

            onClicked: {
                if (pageSelected != 'algorithmScreen')
                    core.algorithmScreenRequest()
            }
        }

        Text {
            id: algorithmScreenlabel
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Algoritmo")
            font.pointSize: 14
            font.italic: true
        }
    }

    //CONTAINER
    Rectangle{
        id: menuStepsContainer
        anchors.top: algorithmScreen.bottom
        width: 100
        height: 180
        anchors.left: parent.left
        anchors.right: algorithmScreen.right
        visible: true

        MouseArea {
            id: containermouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true
        }


        Rectangle{
            id: windowingStep
            anchors.top: menuStepsContainer.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: windowingStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    windowingStep.color = "#dfe3ee"
                }
                onExited: {
                    windowingStep.color = "white"
                }

                onClicked: {
                    core.setCurrState("windowing")
                    core.windowingStepRequest()
                }
            }

            Text {
                id: windowingSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Janelamento")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }
        Rectangle{
            id: equalizationStep
            anchors.top: windowingStep.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: equalizationStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    equalizationStep.color = "#dfe3ee"
                }
                onExited: {
                    equalizationStep.color = "white"
                }

                onClicked: {
                    core.setCurrState("equalization")
                    core.equalizationStepRequest()
                }
            }

            Text {
                id: equalizationSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Normalizaçao")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }

        Rectangle{
            id: gaborStep
            anchors.top: equalizationStep.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: gaborStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    gaborStep.color = "#dfe3ee"
                }
                onExited: {
                    gaborStep.color = "white"
                }
                onClicked: {
                    core.setCurrState("gabor")
                    core.gaborStepRequest()
                }
            }

            Text {
                id: gaborSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Gabor")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }

        Rectangle{
            id: binarizationStep
            anchors.top: gaborStep.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: binarizationStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    binarizationStep.color = "#dfe3ee"
                }
                onExited: {
                    binarizationStep.color = "white"
                }
                onClicked: {
                    core.setCurrState("binarization")
                    core.binarizationStepRequest()
                }
            }

            Text {
                id: binarizationSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Binarizaçao")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }

        Rectangle{
            id: minutiaExtractionStep
            anchors.top: binarizationStep.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: minutiaExtractionStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    minutiaExtractionStep.color = "#dfe3ee"
                }
                onExited: {
                    minutiaExtractionStep.color = "white"
                }
                onClicked: {
                    core.setCurrState("minutiaExtraction")
                    core.minutiaExtractionStepRequest()
                }
            }

            Text {
                id: minutiaExtractionSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Minucias")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }

        Rectangle{
            id: matchingStep
            anchors.top: minutiaExtractionStep.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 30
            MouseArea {
                id: matchingStepmouseArea
                anchors.fill: parent
                enabled: hasExecuted
                hoverEnabled: true

                onEntered: {
                    matchingStep.color = "#dfe3ee"
                }
                onExited: {
                    matchingStep.color = "white"
                }
                onClicked: {
                    core.setCurrState("matching")
                    core.matchingStepRequest()
                }
            }

            Text {
                id: matchingSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Matching")
                color: hasExecuted? "black": "grey"
                font.pointSize: 12
                font.italic: true
            }
        }
    }

    //METRICS
    Rectangle{
        id: metrics
        anchors.top: menuStepsContainer.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 40
        MouseArea {
            id: metricsmouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true

            onEntered: {
                metrics.color = "#dfe3ee"
            }
            onExited: {
                metrics.color = "white"
            }

            onClicked: {
                core.metricsScreenRequest()
            }
        }

        Text {
            id: metricslabel
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Metricas")
            font.pointSize: 14
            font.italic: true
        }
    }

    Component.onCompleted: {
        if(pageSelected === "algorithmScreen"){
            algorithmScreen.color = pageSelectedColor
            algorithmScreenmouseArea.hoverEnabled = false

        }
        if(pageSelected === "metricsScreen"){
            metrics.color = pageSelectedColor
            metricsmouseArea.hoverEnabled = false
            menuStepsContainer.visible = false
            metrics.anchors.top = algorithmScreen.bottom
        }
    }

}
