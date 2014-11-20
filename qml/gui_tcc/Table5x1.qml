import QtQuick 1.1

Rectangle {
   id: customTable
   width: 320
   height: 140
   color: "transparent"

   //Rows
   property string rowLabel1: "Tempo etapa"
   property string rowLabel2: "Resultado"
   property string rowLabel3: "Tempo total"
   property string rowLabel4: "Nº Minúcias"
   property string rowLabel5: "Qualidade min"

   property string val1x1: "val11"
   property string val2x1: "val21"
   property string val3x1: "val31"
   property string val4x1: "val41"
   property string val5x1: "val51"



//   property string cellWidth: "120"
//   property string cellHeight: "20"

    property string cellWidth: "120"
    property string cellHeight: "20"

   //row LABELS
   Text {
       id: txtRowLabel1
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(rowLabel1)
       anchors.left: parent.left
       anchors.top: parent.top
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtRowLabel2
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(rowLabel2)
       anchors.left: parent.left
       anchors.top: txtRowLabel1.bottom
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtRowLabel3
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(rowLabel3)
       anchors.top: txtRowLabel2.bottom
       anchors.left: parent.left
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtRowLabel4
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(rowLabel4)
       anchors.top: txtRowLabel3.bottom
       anchors.left: parent.left
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtRowLabel5
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(rowLabel5)
       anchors.top: txtRowLabel4.bottom
       anchors.left: parent.left
       height: cellHeight
       width: cellWidth
   }

   //VALUES

   Text {
       id: txtVal11
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x1)
       height: cellHeight
       width: cellWidth
       anchors.left: txtRowLabel1.right
       anchors.top: txtRowLabel1.top
   }

   Text {
       id: txtVal21
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x1)
       height: cellHeight
       width: cellWidth
       anchors.left: txtRowLabel2.right
       anchors.top: txtVal11.bottom
   }

   Text {
       id: txtVal31
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x1)
       height: cellHeight
       width: cellWidth
       anchors.left: txtRowLabel3.right
       anchors.top: txtVal21.bottom
   }

   Text {
       id: txtVal41
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x1)
       height: cellHeight
       width: cellWidth
       anchors.left: txtRowLabel4.right
       anchors.top: txtVal31.bottom
   }

   Text {
       id: txtVal51
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x1)
       height: cellHeight
       width: cellWidth
       anchors.left: txtRowLabel5.right
       anchors.top: txtVal41.bottom
   }

   //VERTICAL separators

   Image {
       id: separetor1
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: parent.left
       anchors.leftMargin: parent.width/3
       width: 1
       height: 100
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_vertical_limit.png"
   }


//   //horizontal serarators
   Image {
       id: bottomSeparator0
       anchors.bottom: txtRowLabel1.top
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator1
       anchors.bottom: txtRowLabel1.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator2
       anchors.bottom: txtRowLabel2.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator3
       anchors.bottom: txtRowLabel3.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator4
       anchors.bottom: txtRowLabel4.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator5
       anchors.bottom: txtRowLabel5.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/fernanda/workspace/c/tcc_fp_gui/resources/images/list_separator.png"
   }

}
