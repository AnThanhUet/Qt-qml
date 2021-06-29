import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    Rectangle {
//        id: background
//        width: 400
//        height: 300
//        color: an.containsMouse ? "yellow" : "red"

//        Text {
//            x: 30
//            y: 50
//            color: "white"
//            text: qsTr("Press me")
//            MouseArea {
//                anchors.fill: parent
//                onPressed: parent.color = "green"
//                onReleased: parent.color = "black"
//            }
//        }
//        Text {

//            x: 30
//            y: 100
//            text: "Click me"

//            //color: an.pressed ? "red" : "yellow"
//            MouseArea {
//                id: an
//                anchors.fill: parent
//                //onClicked:
//            }
//        }

//    }

//    Rectangle {
//        width: 200
//        height: 112
//        color: "lightblue"

//        TextInput {
//            anchors.left: parent.left
//            y: 16
//            anchors.right: parent.right
//            text: "text input"
//            font.pixelSize: 32
//            color: activeFocus ? "black" : "gray"
//            focus: true
//            activeFocusOnTab: true
//        }

//        TextInput {
//            anchors.left: parent.left
//            y: 64
//            anchors.right: parent.right
//            text: "field 2"
//            font.pixelSize: 32
//            color: activeFocus ? "black" : "yellow" // active black, default: yellow
//            activeFocusOnTab: true // tab swtich field
//        }
//    }
//    Rectangle {
//        x: 100
//        width: 400
//        height: 100
//        border.color: "green"
//        color: "white"
//        radius: 4
//        //smooth: true
//       // clip: true
//        property alias text: textInput.text
//        TextInput {
//            id: textInput
//            anchors.fill: parent
//            anchors.margins: 2
//            text: "Enter text"
//            color: focus ? "black" : "gray"
//            font.pixelSize: parent.height - 4
//        }

//    }
    Row {
        id: topButtom
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        spacing: 20
        Rectangle {
            width: 50
            height: 50
            color: "red"
        }
        Rectangle {
            width: 50
            height: 50
            color: "yellow"
        }
        Rectangle {
            width: 50
            height: 50
            color: "blue"
        }
        Rectangle {
            width: 50
            height: 50
            color: "gray"
        }
    }


    Column {
        id: leftButtom
        anchors {
            top: parent.top
            left: parent.left
        }
        spacing: 50
        Rectangle {
            width: 50
            height: 50
            color: "red"
        }
        Rectangle {
            width: 50
            height: 50
            color: "yellow"
        }
        Rectangle {
            width: 50
            height: 50
            color: "blue"
        }
        Rectangle {
            width: 50
            height: 50
            color: "gray"
        }
    }

}
