import QtQuick
import QuickShell

Singleton {
  id: root
  property QtObject colors
  property QtObject rounding
  property QtObject font
  property QtObject size

  colors: QtObject {
        col_defaultbg: "#061629"
        col_lightbg: "#0B1B27"
        col_selectbg: "#13365B"
        col_comment: "#899DCC"
        col_darktext: "#DFD091"
        col_defaulttext: "#EFE0A1"
        col_lighttext: "#FFF0D1"
        col_red: "#FF522F"
        col_orange: "#FE825B"
        col_yellow: "#C7AE5B"
        col_green: "#829462"
        col_cyan: "#92F1E9"
        col_blue: "#5882DB"
        col_purple: "#A775A8"
  }
}
