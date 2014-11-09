import QtQuick 1.1
//Paleta de cores: http://www.color-hex.com/color-palette/185

Rectangle{
    width: 1200
    height: 700
    color: "#dfe3ee"

    Header{
        id: header
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        pageName: "FPrint - Pagina inicial"
    }

    Menu{
        id:menu
        anchors.top: header.bottom
        anchors.left: parent.left
        pageSelected: "initialPage"
    }

    ExecutionScreen{
        id:upperMainScreen
        anchors.top: header.bottom
        anchors.left: menu.right
        visible: true
    }

//    StagesScreen{
//        id: stagesScreen
//        signal metricsPageRequested
//        anchors.top: separetor.bottom
//        visible: false
//    }
}

