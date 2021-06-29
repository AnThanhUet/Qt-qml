import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rec
        x: 300
        y: 300
        width: 100
        height: 100
        Rot
        color: "lightblue"
//        NumberAnimation on x {
//            from: 0
//            to: 150
//            duration: 1000 // thuc hien x -> 150 trong 1s
//        }
    }
    NumberAnimation {
        target: rec
        properties: "x,y"
        to: 100
        duration: 1000
        running: true
    }
}
