import QtQuick 2.5
import QtQuick.Window 2.2
Window {
    width: 500
    height: 500
    visible: true
    color: "blue"
    title: qsTr("Hello World")
    Rectangle{
        anchors.centerIn: parent
        width: 400
        height: 400
        color: "lightgrey"
        //transformOrigin: Item.TopLeft
        Rectangle{
            id: goc
            anchors.centerIn: parent
            color: "white"
            width: height
            height: 10
            radius: 20
        }
        Rectangle{
            x: img.x
            y: img.y
            width: img.width
            height: img.height
            color: "yellow"
            opacity: 0.5
        }
            Image {
                Rectangle{
                    anchors.fill: parent
                    color: "violet"
                    opacity: 0.5
                }
                id: img
                x: goc.x
                y: goc.y
                transformOrigin: Item.TopLeft
                rotation: 45
                source: "./rocket.png"
            }
    }
}
