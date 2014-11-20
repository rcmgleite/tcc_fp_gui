import QtQuick 1.1

Rectangle{
    width: 1400
    height: 700
    color: "#eeeeee"

    Loader {
        id: pageLoader
        source: "AlgorithmScreen.qml"
        focus: true
    }

    Connections {
        target: core
        onSignalMetricsScreenRequest: {
            pageLoader.source = "MetricsScreen.qml"
        }

        onSignalAlgorithmScreenRequest:{
            pageLoader.source = "AlgorithmScreen.qml"
        }

        onSignalStagesScreenRequest: {
            pageLoader.source = "StagesScreen.qml"
        }
    }
}
