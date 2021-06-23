import QtQuick 2.0

Item {
    signal btnPressed()
    signal btnReleased()
    property color btnColor: "red"
    property real btnScale: 1

    Rectangle
    {
        x: 250
        y: 329
        radius: 20
        color: btnColor
        scale: btnScale
        width: 200
        height: 100
        Text {
            anchors.centerIn: parent
            text: qsTr("Clik me")
            scale: 2

        }
        MouseArea
        {
            anchors.fill: parent
            onPressed: btnPressed()
            onReleased: btnReleased()
        }
    }

}
