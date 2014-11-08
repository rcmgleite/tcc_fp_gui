import QtQuick 1.1

Rectangle{
    width: 1200
    height: 700
    color: "#eeeeee"

    UpperMainScreen{
        id:upperMainScreen
    }

    Image {
        id: separetor
        anchors.top: upperMainScreen.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        width: 1100
        height: 1
        source: "../../../gui_tcc/resources/images/list_separator.png"
    }

    StagesScreen{
        id: stagesScreen
        signal metricsPageRequested
        anchors.top: separetor.bottom
        onMetricsButtonClicked: {
            //TODO
        }
    }



}

