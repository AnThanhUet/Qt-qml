import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: rec
        x: 50
        y: 100
        color: "lightblue"
        width: 150
        height: 100
    }
    Abutton
    {
        onBtnPressed:
        {
            btnScale=0.8
            btnColor="orange"
            rec.rotation+=30
            rec.x+=30
            if (rec.x>=640)
                rec.x=50
        }
        onBtnReleased:
        {
            btnScale=1
            btnColor="yellow"
        }
    }



}
