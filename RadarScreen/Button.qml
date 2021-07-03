import QtQuick 2.0

Item
{
    id: cardName
    width: 60
    height: 60
    state: "menu"
    property color colorRec: "#CE6C5E"
    Rectangle
    {
        id: recTop
        x: 0
        y: 13
        width: 60
        height: 14
        color: colorRec
        radius: 20
    }
    Rectangle
    {
        id: recMid
        visible: true
        x: 0
        y: 30
        width: 60
        height: 14
        color: colorRec
        radius: 20
    }
    Rectangle
    {
        id: recBot
        x: 0
        y: 47
        width: 60
        height: 14
        color: colorRec
        radius: 20
    }
    states: State {
                   name: "close"
                   AnchorChanges {
                       target: recTop
                       anchors.verticalCenter: cardName.verticalCenter
                   }
                   PropertyChanges {
                       target: recTop
                       rotation: 45
                   }
                   PropertyChanges {
                       target: recMid
                       visible: false
                   }
                   AnchorChanges {
                       target: recBot
                       anchors.verticalCenter: cardName.verticalCenter
                   }
                   PropertyChanges {
                       target: recBot
                       rotation: -45
                   }
                  }
    transitions: Transition {
        ParallelAnimation {
        AnchorAnimation {duration: 500; easing.type: Easing.OutQuart}
        RotationAnimation {duration: 500; easing.type: Easing.OutQuart}
        }
      }
}
