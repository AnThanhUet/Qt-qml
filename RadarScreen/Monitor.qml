import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

Item {
    id: music
    state: "main"
    property color colorBox: "#F3825F"
    property color colorText: "#493261"
    signal musicClick()
    Rectangle
    {
        id: boxMusic
        width: 750
        height: 750
        color: "black" //colorBox
        radius: 10
        //anchors.centerIn: parent
        //////

        Rectangle {
            id: env
            color: "black"
            width: height
            height: radius
            radius: boxMusic.height - 150
            border.color: "Yellow"
            border.width: 3
            anchors.centerIn: parent
            /* Draw mul ring */
            Rectangle {
                id: ring1
                color: "black"
                width: height
                height: radius
                radius: env.radius - 100
                border.color: "Yellow"
                border.width: 2
                anchors.centerIn: parent

                Rectangle {
                    id: ring2
                    color: "black"
                    width: height
                    height: radius
                    radius: ring1.radius - 100
                    border.color: "Yellow"
                    border.width: 2
                    anchors.centerIn: parent

                    Rectangle {
                        id: ring3
                        color: "black"
                        width: height
                        height: radius
                        radius: ring2.radius - 100
                        border.color: "Yellow"
                        border.width: 2
                        anchors.centerIn: parent

                        Rectangle {
                            id: ring4
                            color: "black"
                            width: height
                            height: radius
                            radius: ring3.radius - 100
                            border.color: "Yellow"
                            border.width: 2
                            anchors.centerIn: parent
                        }

                        Rectangle {
                            id: ring5
                            color: "black"
                            width: height
                            height: radius
                            radius: ring4.radius - 100
                            border.color: "Yellow"
                            border.width: 2
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            /* Draw mul line*/
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 20
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 40
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 60
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 80
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 100
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 120
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 140
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 160
            }
            Rectangle {
                color: "yellow"
                width: 1
                height: ring1.height
                anchors.centerIn: parent
                rotation: 180
            }
            /* Draw clockwise*/
            Rectangle {
                id: clockwise
                color: "yellow"
                opacity: 0.8
                height: ring1.radius/2
                width: 2

                x: env.width/2
                y: env.height/2
                rotation: 45
                transformOrigin: Item.TopLeft
                RotationAnimator {
                    target: clockwise
                    from: 0
                    to: 360
                    duration: 60000
                    running: true
                }
            }
        }

        /////
    }
    Rectangle
    {
        id: boxText
        width: textMusic.width
        height: textMusic.height
        color: colorBox
        x: boxMusic.x+93
        y: boxMusic.y+30
        Text {
            id: textMusic
            text: qsTr("Monitor Radar")
            font.pointSize: 18
            font.bold: true
            color: colorText
        }
    }
    states: [
        State {
        name: "task"
        PropertyChanges {
            target: music
            x: 138
            y: 186
        }
        PropertyChanges {
            target: boxText
            x: boxMusic.x+30
            y: boxMusic.y+18
        }
        PropertyChanges {
            target: mouse
            visible: true
        }
    },
        State {
            name: "midState"
            PropertyChanges {
                target: music
                visible: false
            }
        }
    ]
    transitions: Transition {
        PropertyAnimation {properties: "x,y"; duration: 500; easing.type: Easing.OutQuart}
    }
    MouseArea
    {
        id: mouse
        visible: false
        anchors.fill: boxText
        onClicked: musicClick()
    }

}
