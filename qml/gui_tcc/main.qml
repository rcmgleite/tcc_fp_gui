import QtQuick 1.1

Rectangle{
    width: 1000
    height: 600
    Text {
        id: myText
        width: 200
        height: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: test.getName();
        anchors.centerIn: parent
    }

    Rectangle{
        color: "red"
        TextEdit{
            id:myEditText
            x: 401
            y: 359
            font.family: "Helvetica"
            font.pointSize: 20
            color: "blue"
            focus: true
        }
    }

    CustomButtom{
        x: 629
        y: 250
        buttonColor: "grey"
        buttonLabelColor: "red"
        onButtonClick: {
            console.log(myEditText.text);
            test.setName(myEditText.text);
            myText.text = (test.getName());
        }
    }

    CustomButtom{
        x: 629
        y: 300
        buttonColor: "grey"
        buttonLabel: "Executar"
        buttonLabelColor: "red"
        onButtonClick: {
            console.log("executando core agora!");
            test.execute();
        }
    }
}
