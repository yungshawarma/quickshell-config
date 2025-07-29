import QtQuick
import QtQuick.Layouts
import Quickshell
import "root:/config"

Item {
  id: root
  Layout.fillHeight: true
  Layout.alignment: Qt.AlignVCenter
  implicitHeight: parent.implicitHeight
  implicitWidth: logoBox.implicitWidth
  Rectangle {
    id: logoBox
    anchors.fill: parent
    color: "transparent"
    implicitHeight: parent.implicitHeight
    implicitWidth: logoText.implicitWidth
    Text {
      id: logoText
      anchors.centerIn: parent
      text: "NixLogo"
      font.family: Looks.font.family
      font.pixelSize: Looks.font.pixelSize.large
      color: Looks.colors.cyan
    }
  }
  
}
