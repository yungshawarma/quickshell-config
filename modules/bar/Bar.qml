import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import QtQuick
import QtQuick.Layouts
import "root:/config"

Scope {
  id: bar
  readonly property int barHeight: Looks.size.barHeight
  Variants {
    model: Quickshell.screens
    PanelWindow {
      id: barRoot
      implicitHeight: barHeight
      exclusiveZone: barHeight
      property ShellScreen modelData
      anchors {
        top: true
        left: true
        right: true
      }
      color: Funcs.hexToRgb(Looks.colors.defaultbg, Looks.colors.opacity)
      RowLayout {
        id: leftSection
        anchors {
          top: parent.top
          bottom: parent.bottom
          left: parent.left
        }
        implicitHeight: parent.implicitHeight
        implicitWidth: parent.implicitWidth / 3
        spacing: Looks.size.barSpacing
        Icon {
          Layout.leftMargin: Looks.size.barSpacing
        }
        Workspaces {}
      }
    }
  }
}
