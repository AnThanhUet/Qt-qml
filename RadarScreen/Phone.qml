import QtQuick 2.0

Item {
    id: phone
    state: "main"
    property color colorBox: "#A7425C"
    property color colorText: "#FFE66E"
    signal phoneClick()
    Rectangle
    {
        id: boxPhone
        width: 720
        height: 1000
        color: colorBox
        radius: 10
    }
    Rectangle
    {
        id: boxText
        width: textPhone.width
        height: textPhone.height
        color: colorBox
        x: boxPhone.x+93
        y: boxPhone.y+30
        Text {
            id: textPhone
            text: qsTr("Option1")
            font.pointSize: 18
            font.bold: true
            color: colorText
        }
    }
    states: [
        State {
        name: "task"
        PropertyChanges {
            target: phone
            x: 108
            y: 132
        }
        PropertyChanges {
            target: boxText
            x: boxPhone.x+30
            y: boxPhone.y+18
        }
        PropertyChanges {
            target: mouse
            visible: true
        }
    },
        State {
            name: "midState"
            PropertyChanges {
                target: phone
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
        onClicked: phoneClick()
    }

}
