import QtQuick
import Quickshell

pragma Singleton
pragma ComponentBehavior: Bound

Singleton {
  id: root
  property QtObject colors
  property QtObject rounding
  property QtObject font
  property QtObject size

  colors: QtObject {
        property var defaultbg: "#061629"
        property var lightbg: "#0B1B27"
        property var selectbg: "#13365B"
        property var comment: "#899DCC"
        property var darktext: "#DFD091"
        property var defaulttext: "#EFE0A1"
        property var lighttext: "#FFF0D1"
        property var red: "#FF522F"
        property var orange: "#FE825B"
        property var yellow: "#C7AE5B"
        property var green: "#829462"
        property var cyan: "#92F1E9"
        property var blue: "#5882DB"
        property var purple: "#A775A8"
        property real opacity: 0.6
  }
  rounding: QtObject {
    property int unsharpen: 2
    property int unsharpenmore: 6
    property int verysmall: 8
    property int small: 12
    property int normal: 17
    property int large: 23
    property int verylarge: 30
    property int screenRounding: large
    property int windowRounding: 18
  }
  font: QtObject {
    property string family: "MesloLGS NF"
    property QtObject size: QtObject {
      property int smallest: 10
      property int smaller: 12
      property int small: 15
      property int normal: 16
      property int large: 17
      property int larger: 19
      property int huge: 22
      property int hugeass: 23
      property int title: huge
    }
  }
  size: QtObject {
    property int barHeight: 40 
    property int barSpacing: 10
    property int sidebarWidth: 450
    property int hyprlandGapsOut: 5 
  }
}
