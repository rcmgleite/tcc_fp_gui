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
        target: StagesScreen
        onMetricsButtonClicked: {
            pageLoader.source = "MetricsScreen.qml"
        }
    }
}
