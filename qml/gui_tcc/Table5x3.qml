import QtQuick 1.1

Rectangle {
   id: customTable
   width: 460
   height: 140
   color: "transparent"

   //Columns
   property string columnLabel1: "Tolerante"
   property string columnLabel2: "Padrão"
   property string columnLabel3: "Rigoroso"

   //Rows
   property string rowLabel1: "Tempo etapa"
   property string rowLabel2: "Resultado"
   property string rowLabel3: "Tempo total"
   property string rowLabel4: "Nº Minúcias"
   property string rowLabel5: "Qualidade min"

   property string val1x1: ""
   property string val1x2: ""
   property string val1x3: ""

   property string val2x1: ""
   property string val2x2: ""
   property string val2x3: ""

   property string val3x1: ""
   property string val3x2: ""
   property string val3x3: ""

   property string val4x1: ""
   property string val4x2: ""
   property string val4x3: ""

   property string val5x1: ""
   property string val5x2: ""
   property string val5x3: ""


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
       anchors.top: txtColumnLabel1.bottom
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

   //Column LABELS
   Text {
       id: txtColumnLabel1
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(columnLabel1)
       anchors.left: txtRowLabel1.right
       height: cellHeight
       width: cellWidth

   }

   Text {
       id: txtColumnLabel2
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(columnLabel2)
       anchors.top: parent.top
       anchors.left: txtColumnLabel1.right
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtColumnLabel3
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(columnLabel3)
       anchors.top: parent.top
       anchors.left: txtColumnLabel2.right
       height: cellHeight
       width: cellWidth
   }

   //VALUES

   Text {
       id: txtVal11
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x1)
       anchors.left: txtRowLabel1.right
       anchors.top: txtColumnLabel1.bottom
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtVal12
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x2)
       height: cellHeight
       anchors.left: txtVal11.right
       anchors.top: txtColumnLabel2.bottom
       width: cellWidth
   }

   Text {
       id: txtVal13
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x3)
       height: cellHeight
       anchors.left: txtVal12.right
       anchors.top: txtColumnLabel3.bottom
       width: cellWidth
   }

   Text {
       id: txtVal21
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x1)
       height: cellHeight
       anchors.left: txtRowLabel2.right
       anchors.top: txtVal11.bottom
       width: cellWidth
   }

   Text {
       id: txtVal22
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x2)
       height: cellHeight
       anchors.left: txtVal21.right
       anchors.top: txtVal12.bottom
       width: cellWidth
   }

   Text {
       id: txtVal23
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x3)
       height: cellHeight
       anchors.left: txtVal22.right
       anchors.top: txtVal13.bottom
       width: cellWidth
   }

   Text {
       id: txtVal31
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x1)
       height: cellHeight
       anchors.left: txtRowLabel2.right
       anchors.top: txtVal21.bottom
       width: cellWidth
   }

   Text {
       id: txtVal32
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x2)
       height: cellHeight
       anchors.left: txtVal31.right
       anchors.top: txtVal22.bottom
       width: cellWidth
   }

   Text {
       id: txtVal33
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x3)
       height: cellHeight
       anchors.left: txtVal32.right
       anchors.top: txtVal23.bottom
       width: cellWidth
   }

   Text {
       id: txtVal41
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x1)
       height: cellHeight
       anchors.left: txtRowLabel4.right
       anchors.top: txtVal31.bottom
       width: cellWidth
   }

   Text {
       id: txtVal42
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x2)
       height: cellHeight
       anchors.left: txtVal41.right
       anchors.top: txtVal32.bottom
       width: cellWidth
   }

   Text {
       id: txtVal43
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x3)
       height: cellHeight
       anchors.left: txtVal42.right
       anchors.top: txtVal33.bottom
       width: cellWidth
   }

   Text {
       id: txtVal51
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x1)
       height: cellHeight
       anchors.left: txtRowLabel5.right
       anchors.top: txtVal41.bottom
       width: cellWidth
   }

   Text {
       id: txtVal52
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x2)
       height: cellHeight
       anchors.left: txtVal51.right
       anchors.top: txtVal42.bottom
       width: cellWidth
   }

   Text {
       id: txtVal53
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x3)
       height: cellHeight
       anchors.left: txtVal52.right
       anchors.top: txtVal43.bottom
       width: cellWidth
   }

   //VERTICAL separators

   Image {
       id: separetor1
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel1.left
       anchors.leftMargin: -10
       width: 1
       height: 120
       source: "/home/priscila/tcc_fp_gui/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor2
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel2.left
       anchors.leftMargin: -10
       width: 1
       height: 120
       source: "/home/priscila/tcc_fp_gui/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor3
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel3.left
       anchors.leftMargin: -10
       width: 1
       height: 120
       source: "/home/priscila/tcc_fp_gui/resources/images/list_vertical_limit.png"
   }

   //horizontal serarators
   Image {
       id: bottomSeparator0
       anchors.bottom: txtRowLabel1.top
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator1
       anchors.bottom: txtRowLabel1.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator2
       anchors.bottom: txtRowLabel2.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator3
       anchors.bottom: txtRowLabel3.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator4
       anchors.bottom: txtRowLabel4.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator5
       anchors.bottom: txtRowLabel5.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/priscila/tcc_fp_gui/resources/images/list_separator.png"
   }

}
