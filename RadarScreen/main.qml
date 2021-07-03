import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: rootWin
    width: 720
    height: 1000
    visible: true
    color: "#DDDDDD"
    title: qsTr("Hello World")
    Button
    {
        id: cardName
        x: 18
        y: 18
        z: 1
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                if (cardName.state=="menu")
                {
                    cardName.state="close"
                    cardName.colorRec="#516C8D"
                    contact.state="task"
                    phone.state="task"
                    music.state="task"
                    message.state="task"
                }
            }
        }
    }

    Contact
    {
       id: contact
       onContactClick:
       {
           state="main"
           phone.state="midState"
           music.state="midState"
           message.state="midState"
           cardName.state="menu"
           cardName.colorRec=colorText
       }
    }

    Phone
    {
       id: phone
       onPhoneClick:
       {
           state="main"
           contact.state="midState"
           music.state="midState"
           message.state="midState"
           cardName.state="menu"
           cardName.colorRec=colorText
       }
    }
    Monitor
    {
        id: music
        onMusicClick:
        {
            state="main"
            contact.state="midState"
            phone.state="midState"
            message.state="midState"
            cardName.state="menu"
            cardName.colorRec=colorText
        }
    }
    Message
    {
        id: message
        onMessageClick:
        {
            state="main"
            contact.state="midState"
            music.state="midState"
            phone.state="midState"
            cardName.state="menu"
            cardName.colorRec=colorText
        }
    }
}
