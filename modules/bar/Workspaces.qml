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
  implicitWidth: hyprBox.implicitWidth
  Rectangle {
    id: hyprBox
    RowLayout {
      id: hyprLayout
      anchors.fill: parent
      implicitHeight: parent.implicitHeight
      implicitWidth: parent.implicitWidth
      Repeater {
        model: Hyprland.workspaces
        
      }
    }
  }
}
 
