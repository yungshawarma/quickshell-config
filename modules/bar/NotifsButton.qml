import QtQuick
import Quickshell
import QtQuick.Layouts
// additional imports
import "root:/config"

Item {
    id: root
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: bar.barHeight
    implicitWidth: notifBox.implicitWidth
    Rectangle {
        id: notifBox
        color: "transparent"
        implicitHeight: bar.barHeight
        implicitWidth: notifText.width
        Text {
            id: notifText
            font.pixelSize: Looks.font.size.hugeass
            font.family: Looks.font.family
            anchors.centerIn: parent
            text: ""
            color: Looks.colors.purple
        }
    }
}
