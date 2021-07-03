import QtQuick 2.0

Item {
    id: contact
    state: "main"
    visible: true
    property color colorBox: "#563761"
    property color colorText: "#AC425C"
    signal contactClick()
    Rectangle
    {
        id: boxContact
        width: 720
        height: 1000
        color: colorBox
        radius: 10
    }
    Rectangle
    {
        id: boxText
        width: textContact.width
        height: textContact.height
        color: colorBox
        x: boxContact.x+93
        y: boxContact.y+30
        Text {
            id: textContact
            text: qsTr("Contact")
            font.pointSize: 18
            font.bold: true
            color: colorText
        }
    }
    states: [
        State {
        name: "task"
        PropertyChanges {
            target: contact
            x: 78
            y: 78
        }
        PropertyChanges {
            target: boxText
            x: boxContact.x+30
            y: boxContact.y+18
        }
        PropertyChanges {
            target: mouse
            visible: true
        }
    },
        State {
            name: "midState"
            PropertyChanges {
                target: contact
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
        onClicked: contactClick()
    }

}
