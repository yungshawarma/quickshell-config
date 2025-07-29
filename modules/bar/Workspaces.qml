import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import "root:/config"

Item {
    id: root
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: parent.implicitHeight
    implicitWidth: workspacesRow.implicitWidth
    Rectangle {
        implicitHeight: bar.barHeight
        implicitWidth: workspacesRow.implicitWidth
        color: "transparent"
        RowLayout {
            id: workspacesRow
            anchors.fill: parent
            spacing: 0
            Repeater {
                model: Hyprland.workspaces
                Rectangle {
                    color: "transparent"
                    visible: modelData.monitor.name == barRoot.screen.name && modelData.id > 0
                    height: bar.barHeight
                    width: bar.barHeight
                    Rectangle {
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.margins: 5
                        color: modelData.focused ? Looks.colors.cyan : "transparent"
                        height: 2
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: Hyprland.dispatch("workspace " + modelData.id)
                    }
                    Text {
                        text: modelData.id
                        anchors.centerIn: parent
                        color: modelData.active ? Looks.colors.cyan : Looks.colors.lighttext
                        font.pixelSize: Looks.font.size.normal
                        font.family: Looks.font.family
                    }
                }
            }
        }
    }
}
