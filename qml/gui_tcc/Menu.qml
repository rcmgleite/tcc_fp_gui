import QtQuick 1.1

Rectangle {
    id: menu
    width: 220
    height: 660
    color: "white"
    z:1
    property string pageSelected: "initialPage"
    property string pageselectoselectedcolor: "#dfe3ee"

    //INITIAL PAGE
    Rectangle{
        id: initialPage
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        color: "transparent"
        height: 40
        MouseArea {
            id: initialPagemouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true

            onEntered: {
                initialPage.color = "#dfe3ee"
            }
            onExited: {
                initialPage.color = "white"
            }

            onClicked: {
                core.initalScreenRequest()
            }
        }

        Text {
            id: initialPagelabel
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Inicio")
            font.pointSize: 14
            font.italic: true
        }
    }

    //METRICS
    Rectangle{
        id: metrics
        anchors.top: initialPage.bottom
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

    //ALGORITHM tab with its subtabs
    Rectangle{
        id: algorithm
        anchors.top: metrics.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: 40
        MouseArea {
            id: algorithmmouseArea
            anchors.fill: parent
            enabled: true
            hoverEnabled: true

            onEntered: {
                algorithm.color = "#dfe3ee"
            }
            onExited: {
                algorithm.color = "white"
            }

            onClicked: {
//                core.stagesScreenRequest();

                if(menuStepsContainer.visible === false){
                    menuStepsContainer.visible = true
                    menuStepsContainer.color = "blue"
                }
                else{
                    menuStepsContainer.visible = false
                }
            }
        }

        Text {
            id: algorithmlabel
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
        anchors.top: algorithm.bottom
        width: 100
        anchors.left: parent.left
        anchors.right: algorithm.right
        visible: false

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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    windowingStep.color = "#dfe3ee"
                }
                onExited: {
                    windowingStep.color = "white"
                }
            }

            Text {
                id: windowingSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Janelamento")
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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    equalizationStep.color = "#dfe3ee"
                }
                onExited: {
                    equalizationStep.color = "white"
                }
            }

            Text {
                id: equalizationSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Normalizaçao")
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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    gaborStep.color = "#dfe3ee"
                }
                onExited: {
                    gaborStep.color = "white"
                }
            }

            Text {
                id: gaborSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Gabor")
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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    binarizationStep.color = "#dfe3ee"
                }
                onExited: {
                    binarizationStep.color = "white"
                }
            }

            Text {
                id: binarizationSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Binarizaçao")
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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    minutiaExtractionStep.color = "#dfe3ee"
                }
                onExited: {
                    minutiaExtractionStep.color = "white"
                }
            }

            Text {
                id: minutiaExtractionSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Minucias")
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
                enabled: true
                hoverEnabled: true

                onEntered: {
                    matchingStep.color = "#dfe3ee"
                }
                onExited: {
                    matchingStep.color = "white"
                }
            }

            Text {
                id: matchingSteplabel
                anchors.left: parent.left
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter
                text: qsTr(">Matching")
                font.pointSize: 12
                font.italic: true
            }
        }
    }

    Component.onCompleted: {
        if(pageSelected === "initialPage"){
            initialPage.color = pageselectoselectedcolor
            initialPagemouseArea.hoverEnabled = false
        }
        if(pageSelected === "metricsScreen"){
            metrics.color = pageselectoselectedcolor
            metricsmouseArea.hoverEnabled = false
        }
    }

}
