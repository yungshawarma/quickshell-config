import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
// additional imports
import "root:/config"

Item {
    id: root
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: bar.barHeight
    implicitWidth: trayRow.implicitWidth
    RowLayout {
        id: trayRow
        spacing: Looks.size.barSpacing
        anchors.fill: parent
        Repeater {
            model: SystemTray.items
            SysTrayItem {
                required property SystemTrayItem modelData

                bar: barRoot
                item: modelData
                systrayWidget: root
                trayItemWidth: Looks.font.size.hugeass
            }
        }
    }
}
