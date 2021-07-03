import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    width: 500
    height: 500
    visible: true
    title: qsTr("Clock Basic")
    id: root
    color: "lightgrey"

    Item {
        property int _minSide: Math.min(root.width, root.height)
        x: 10 + (root.width - _minSide)/2
        y: 10 + (root.height - _minSide)/2
        width: _minSide - 20
        height: _minSide - 20
        scale: Math.min(width / background.sourceSize.width,
                        height / background.sourceSize.height)

        transformOrigin: Item.TopLeft

        Image {
            id: background
            source: "background.png"
        }


        Image {
            id: smallArm
            source: "smallArm.png"
            x: background.width/2 - width/2
            y: background.height/2 - 914 // 914 the anchor point smallArm
            transform: Rotation{
                origin.x: smallArm.width/2
                origin.y: 914
                RotationAnimation on angle {
                    from: 0
                    to: 360 * 2 // 12h * 2 = 24h
                    duration: 60000 // 60.000 mili s = 60s
                    loops: Animation.Infinite
                }
            }
        }

        Image {
            id: largeArm
            source: "largeArm.png"
            x: background.width/2 - width/2
            y: background.height/2 - 1255

            transform: Rotation{
                origin.x: largeArm.width/2
                origin.y: 1255
                //angle: 90

                RotationAnimation on angle{
                    from: 0
                    to: 260 * 24
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }
    }

}
