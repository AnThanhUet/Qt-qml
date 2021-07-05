import QtQuick 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ConicalGradient {
           anchors.fill: parent
           angle: 0.0
           gradient: Gradient {
               GradientStop { position: 0.0; color: "white" }
               GradientStop { position: 1.0; color: "black" }
           }
       }
}
