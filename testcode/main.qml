import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 720
    height: 1000
    color: "#DDDDDD"
    title: qsTr("Hello World")

    Button{
        id: cardName
        x: 18
        y: 18
        //z: 1
        MouseArea{
            anchors.fill: parent
            onClicked:{
                if(cardName.state == "menu"){
                    cardName.state = "close"
                    cardName.colorButton = "#516C8D"

                }
            }
        }
    }


}
