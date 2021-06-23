import QtQuick 2.5
import QtQuick.Window 2.2
import "arr.js" as Anjs

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Annt")

    property color btn_color: "yellow"
    property real btn_scale: 1

    /* Part 1 - control Rectangle */
    /* Obj - controll */
    Rectangle{
        id: demoRect
        x: 10
        y: 200
        width: 100
        height: 100
        color: "lightblue"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                deomoNA.start()
            }
        }
        ColorAnimation on color {
            id: alo
            loops: Animation.Infinite
            from: "lightblue"
            to: "blue"
            //duration: 200
        }
    }
    NumberAnimation {
        id: deomoNA
        target: demoRect
        property: "width"
        duration: 200
        to:1000
        //duration: 1000
    }
    /* Button controll */
    Rectangle{
        id: btn
        x: 100
        y : 400
        width: 50
        height: 50
        color: btn_color
        scale: btn_scale
        Text {
            id: txt
            text: qsTr("click me")
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onPressed:{
                onClicked: mouseAreaClick(mouseX, mouseY)
                btn_scale = 0.8
                btn_color = "orange"
                demoRect.rotation += 30
                demoRect.x += 30
                if(demoRect.x >= 640)
                    demoRect.x = 0
            }
            onReleased:{
                btn_scale = 1
                btn_color = "red"
            }
        }
    }
    /* Part 2: Array color */
    property real idx: 0

    function mouseAreaClick(x,y){
        console.log("mouseAreaClick: ("+x+", "+y+")")
        if((x+y) % 2 == 0)
            idx = idx + 1
        else
            idx = idx + 2
    }
    Rectangle{
        id: rec1
        width: 100
        height: 60
        y: 20
        color: Anjs.getColor(idx)
    }
    Rectangle{
        id: rec2
        width: 100
        height: 60
        x: 105
        y: 20
        color: Anjs.getColor(idx+1)
    }
    Rectangle{
        id: rec3
        width: 100
        height: 60
        x: 210
        y: 20
        color: Anjs.getColor(idx+2)
    }
    Rectangle{
        id: rec4
        width: 100
        height: 60
        x: 315
        y: 20
        color: Anjs.getColor(idx+3)
    }
    Rectangle{
        id: rec5
        width: 100
        height: 60
        x: 420
        y: 20
        color: Anjs.getColor(idx+4)
    }



}
