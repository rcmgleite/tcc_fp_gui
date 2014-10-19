import QtQuick 1.1

Rectangle{
    width: 1000
    height: 600
//    Text {
//        id: myText
//        width: 200
//        height: 100
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        text: core.getName();
//        anchors.centerIn: parent
//    }

//    Rectangle{
//        color: "red"
//        TextEdit{
//            id:myEditText
//            x: 401
//            y: 359
//            font.family: "Helvetica"
//            font.pointSize: 20
//            color: "blue"
//            focus: true
//        }
//    }

//    CustomButtom{
//        x: 629
//        y: 250
//        buttonColor: "grey"
//        buttonLabelColor: "red"
//        onButtonClick: {
//            console.log(myEditText.text);
//            core.setName(myEditText.text);
//            myText.text = (test.getName());
//        }
//    }

    CustomButtom{
        id: executeButton
        x: 0
        y: 300
        defaultButtonColor: "lightgrey"
        pressedButtonColor: "grey"
        buttonLabel: "Executar"
        buttonLabelColor: "black"
        onButtonClick: {
            console.log("executando core agora!");
            core.execute();
            windowingTime.text = core.getWindowingTime();
        }
    }

    CustomButtom{
        id:resultsButton
        anchors.left: executeButton.right
        anchors.leftMargin: 10
        anchors.bottom: executeButton.bottom

        defaultButtonColor: "lightgrey"
        pressedButtonColor: "grey"
        buttonLabel: "Resultados"
        buttonLabelColor: "black"
        onButtonClick: {

            windowingTime.value = core.getWindowingTime();
            equalizationTime.value = core.getEqualizationTime();
            gaborFilterTime.value = core.getGaborFilterTime();
            binarizationTime.value = core.getBinarizationTime();
            minutiaeExtractionTime.value = core.getMinutiaeExtractionTime();
            matchingTime.value = core.getMatchingTime();
        }
    }


    LabeledTextview{
        id:windowingTime
        label: qsTr("Windowing time: ")
        value: qsTr("Não Calculádo");
    }

    LabeledTextview {
        id: equalizationTime
        y: 50
        label: qsTr("Equalization time: ")
        value: qsTr("Não Calculádo");
    }


    LabeledTextview {
        id: gaborFilterTime
        y:100
        label: qsTr("Gabor Filter Time: ")
        value: qsTr("Não Calculádo");
    }


    LabeledTextview {
        id: binarizationTime;
        y:150
        label: qsTr("Binarization time: ")
        value: qsTr("Não Calculádo");
    }


    LabeledTextview {
        id: minutiaeExtractionTime
        y:200
        label: qsTr("Minutiae extraction time: ")
        value: qsTr("Não Calculádo");
    }


    LabeledTextview {
        id: matchingTime
        y:250
        label: qsTr("Matching time: ")
        value: qsTr("Não Calculádo");
    }
}
