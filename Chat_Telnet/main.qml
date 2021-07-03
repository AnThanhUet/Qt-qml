import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


        Canvas {
            anchors.fill: parent
            onPaint: {
               var context = getContext("2d");
                context.beginPath();
                context.moveTo(200,300);
                context.lineTo(100,100);
                context.lineTo(300,100);
                context.closePath();

                context.fillStyle = "red";
                context.fill();
            }
        }



}
