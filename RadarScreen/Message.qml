import QtQuick 2.0

Item {
    id: message
    state: "main"
    property color colorBox: "#FFE26F"
    property color colorText: "#CE6C5E"
    signal messageClick()
    Rectangle
    {
        id: boxMessage
        width: 720
        height: 1000
        color: colorBox
        radius: 10
    }
    Rectangle
    {
        id: boxText
        width: textMessage.width
        height: textMessage.height
        color: colorBox
        x: boxMessage.x+93
        y: boxMessage.y+30
        Text {
            id: textMessage
            text: qsTr("General")
            font.pointSize: 18
            font.bold: true
            color: colorText
        }
    }
    states: [
        State {
        name: "task"
        PropertyChanges {
            target: message
            x: 168
            y: 240
        }
        PropertyChanges {
            target: boxText
            x: boxMessage.x+30
            y: boxMessage.y+18
        }
        PropertyChanges {
            target: mouse
            visible: true
        }
    },
        State {
            name: "midState"
            PropertyChanges {
                target: message
                visible: false
            }
        }
    ]
    transitions: Transition {
        PropertyAnimation {properties: "x,y"; duration: 500; easing.type: Easing.OutQuart}
    }
    MouseArea
    {
        id: mouse
        visible: false
        anchors.fill: boxText
        onClicked: messageClick()
    }

}
