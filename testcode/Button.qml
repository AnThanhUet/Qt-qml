import QtQuick 2.0

Item {
    id: cardName
    width: 60
    height: 60
    state: "menu" // status begin
    property color colorButton: "#CE6C5E"

    Rectangle{
        id: recTop
        x: 0
        y: 10
        width: 60
        height: 15
        color: colorButton
        radius: 20
    }

    Rectangle{
        id: recMid
        x: 0
        y: 30
        width: 60
        height: 15
        color: colorButton
        radius: 20
    }

    Rectangle{
        id: recBot
        x: 0
        y: 50
        width: 60
        height: 15
        color: colorButton
        radius: 20
    }

    states: State{
        name: "close"
        /* recTop changes */
        AnchorChanges{
            target: recTop
            anchors.verticalCenter: cardName.verticalCenter
        }
        PropertyChanges {
            target: recTop
            rotation: 45
        }
        /* recMid changes */
        PropertyChanges {
            target: recMid
            visible: false
        }
        /* recBot changes */
        AnchorChanges{
            target: recBot
            anchors.verticalCenter: cardName.verticalCenter
        }
        PropertyChanges {
            target: recBot
            rotation: -45
        }
    }

    transitions: Transition {
        ParallelAnimation{
            AnchorAnimation{
                duration: 1000
                easing.type: Easing.OutQuart
            }
            RotationAnimation{
                duration: 1000
                easing.type: Easing.OutQuart
            }
        }
    }



}
