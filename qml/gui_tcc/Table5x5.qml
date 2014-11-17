import QtQuick 1.1

Rectangle {
   id: customTable
   width: 460
   height: 140
   color: "transparent"

   //Columns
   property string columnLabel1: "Sistema 1"
   property string columnLabel2: "Sistema 2"
   property string columnLabel3: "Sistema 3 - Tolerante"
   property string columnLabel4: "Sistema 3 - Padrão"
   property string columnLabel5: "Sistema 3 - Rigoroso"

   //Rows
   property string rowLabel1: "% falta aceitação"
   property string rowLabel2: "% falta rejeição"
   property string rowLabel3: "% verdadeira aceitação"
   property string rowLabel4: "% verdadeira rejeição"
   property string rowLabel5: "Tempo médio"

   property string val1x1: "val11"
   property string val1x2: "val12"
   property string val1x3: "val13"
   property string val1x4: "val14"
   property string val1x5: "val15"

   property string val2x1: "val21"
   property string val2x2: "val22"
   property string val2x3: "val23"
   property string val2x4: "val24"
   property string val2x5: "val25"

   property string val3x1: "val31"
   property string val3x2: "val32"
   property string val3x3: "val33"
   property string val3x4: "val34"
   property string val3x5: "val35"

   property string val4x1: "val41"
   property string val4x2: "val42"
   property string val4x3: "val43"
   property string val4x4: "val44"
   property string val4x5: "val45"

   property string val5x1: "val51"
   property string val5x2: "val52"
   property string val5x3: "val53"
   property string val5x4: "val54"
   property string val5x5: "val55"


//   property string cellWidth: "120"
//   property string cellHeight: "20"

    property string cellWidth: parent.width/7
    property string cellHeight: "40"

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
       anchors.top: parent.top
       anchors.left: txtVal11.left
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
       anchors.left: txtColumnLabel2.right
       height: cellHeight
       width: cellWidth

   }

   Text {
       id: txtColumnLabel4
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(columnLabel4)
       anchors.top: parent.top
       anchors.left: txtColumnLabel3.right
       height: cellHeight
       width: cellWidth
   }

   Text {
       id: txtColumnLabel5
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(columnLabel5)
       anchors.top: parent.top
       anchors.left: txtColumnLabel4.right
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
       id: txtVal14
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x4)
       height: cellHeight
       anchors.left: txtVal13.right
       anchors.top: txtColumnLabel4.bottom
       width: cellWidth
   }

   Text {
       id: txtVal15
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val1x5)
       height: cellHeight
       anchors.left: txtVal14.right
       anchors.top: txtColumnLabel4.bottom
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
       id: txtVal24
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x4)
       height: cellHeight
       anchors.left: txtVal23.right
       anchors.top: txtVal14.bottom
       width: cellWidth
   }

   Text {
       id: txtVal25
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val2x5)
       height: cellHeight
       anchors.left: txtVal24.right
       anchors.top: txtVal15.bottom
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
       id: txtVal34
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x4)
       height: cellHeight
       anchors.left: txtVal33.right
       anchors.top: txtVal24.bottom
       width: cellWidth
   }


   Text {
       id: txtVal35
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val3x5)
       height: cellHeight
       anchors.left: txtVal34.right
       anchors.top: txtVal25.bottom
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
       id: txtVal44
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x4)
       height: cellHeight
       anchors.left: txtVal43.right
       anchors.top: txtVal34.bottom
       width: cellWidth
   }

   Text {
       id: txtVal45
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val4x5)
       height: cellHeight
       anchors.left: txtVal44.right
       anchors.top: txtVal35.bottom
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

   Text {
       id: txtVal54
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x4)
       height: cellHeight
       anchors.left: txtVal53.right
       anchors.top: txtVal44.bottom
       width: cellWidth
   }

   Text {
       id: txtVal55
       font.pointSize: 10
       font.family: "OpenSans"
       text: qsTr(val5x5)
       height: cellHeight
       anchors.left: txtVal54.right
       anchors.top: txtVal45.bottom
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
       height: 240
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor2
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel2.left
       anchors.leftMargin: -10
       width: 1
       height: 240
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor3
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel3.left
       anchors.leftMargin: -10
       width: 1
       height: 240
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor4
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel4.left
       anchors.leftMargin: -10
       width: 1
       height: 240
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
   }

   Image {
       id: separetor5
       anchors.top: parent.top
       anchors.topMargin: 0
       anchors.left: txtColumnLabel5.left
       anchors.leftMargin: -10
       width: 1
       height: 240
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_vertical_limit.png"
   }

   //horizontal serarators
   Image {
       id: bottomSeparator0
       anchors.bottom: txtRowLabel1.top
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator1
       anchors.bottom: txtRowLabel1.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator2
       anchors.bottom: txtRowLabel2.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator3
       anchors.bottom: txtRowLabel3.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator4
       anchors.bottom: txtRowLabel4.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

   Image {
       id: bottomSeparator5
       anchors.bottom: txtRowLabel5.bottom
       anchors.left: parent.left
       anchors.leftMargin: 0
       width: parent.width
       height: 1
       source: "/home/rafael/Desktop/rafael/tcc_fe/gui_fe/gui_tcc/resources/images/list_separator.png"
   }

}
