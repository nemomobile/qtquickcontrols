import QtQuick 2.1
import QtQuick.Controls 1.0 //needed for the Stack attached property
import QtQuick.Controls.Nemo 1.0
import QtQuick.Controls.Styles.Nemo 1.0

Page {
    id: root

    headerTools: HeaderToolsLayout {
        showBackButton: true;
        title: "Roller"
    }

    allowedOrientations: Qt.PortraitOrientation | Qt.LandscapeOrientation | Qt.InvertedLandscapeOrientation | Qt.InvertedPortraitOrientation


    ListModel {
        id: animalsModel
        ListElement { name: "Ant";}
        ListElement { name: "Flea"; }
        ListElement { name: "Parrot"; }
        ListElement { name: "Guinea pig";}
        ListElement { name: "Rat";}
        ListElement { name: "Butterfly";}
        ListElement { name: "Dog";}
        ListElement { name: "Cat";}
        ListElement { name: "Pony";}
        ListElement { name: "Koala";}
        ListElement { name: "Horse";}
        ListElement { name: "Tiger";}
        ListElement { name: "Giraffe";}
        ListElement { name: "Elephant";}
        ListElement { name: "Whale";}
    }


    GlacierRoller {
        id: simpleRoller
        width: parent.width
        anchors{
            top: parent.top
            topMargin: 40
        }

        clip: true
        model: animalsModel
        label: qsTr("Choose your favorite animal")
    }

    GlacierRoller {
        id: simpleRoller2
        width: parent.width
        anchors{
            top: simpleRoller.bottom
            topMargin: 40
        }

        clip: true
        model: animalsModel
        label: qsTr("Choose your second favorite animal")
    }
}