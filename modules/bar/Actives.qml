import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Mpris
import Quickshell.Wayland
// additional imports
import "root:/config"
import "root:/services"

Item {
    id: root
    readonly property MprisPlayer activePlayer: MprisController.activePlayer
    readonly property Toplevel activeApp: ToplevelManager.activeToplevel

    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: bar.barHeight
    width: barRoot.width / 3
    anchors.centerIn: parent
    Rectangle { // Real content
        id: textBox
        anchors.centerIn: parent
        implicitHeight: bar.barHeight
        width: barRoot.width / 3
        color: "transparent"
        Text {
            id: mediaText
            visible: activePlayer.isPlaying
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideMiddle
            font.pixelSize: Looks.font.size.normal
            font.family: Looks.font.family
            anchors.centerIn: parent
            color: Looks.colors.purple
            text: activePlayer?.trackTitle || "Goofy"
        }
        Text {
            id: windowText
            visible: !activePlayer.isPlaying
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideMiddle
            font.pixelSize: Looks.font.size.normal
            font.family: Looks.font.family
            anchors.centerIn: parent
            color: Looks.colors.blue
            text: activeApp.title
        }
    }
}
