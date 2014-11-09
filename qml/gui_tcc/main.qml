import QtQuick 1.1

Rectangle{
    width: 1200
    height: 700
    color: "#eeeeee"

    Loader {
        id: pageLoader
        source: "InitialPage.qml"
        focus: true
    }

    Connections {
        target: core
        onSignalMetricsScreenRequest: {
            pageLoader.source = "MetricsScreen.qml"
        }

        onSignalInitialScreenRequest:{
            pageLoader.source = "InitialPage.qml"
        }

        onSignalStagesScreenRequest: {
            pageLoader.source = "StagesScreen.qml"
        }
    }
}
