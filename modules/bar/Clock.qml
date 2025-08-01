import QtQuick
import Quickshell
import QtQuick.Layouts
import Quickshell.Io
import Quickshell.Hyprland
// additional imports
import "root:/config"
import "root:/modules/drawers/Calendar"
import "root:/"

Item {
    id: root
    readonly property string time: {
        Qt.formatDateTime(clock.date, "h:mm AP");
    }
    readonly property string day: {
        Qt.formatDateTime(clock.date, "MM/dd/yyyy");
    }
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: bar.barHeight
    implicitWidth: Math.max(timeText.width, dayText.width)
    SystemClock {
        id: clock
    }
    Rectangle {
        id: timeBox
        implicitHeight: bar.barHeight
        implicitWidth: Math.max(timeText.width, dayText.width)
        color: "transparent"
        //MouseArea {
        //    anchors.fill: parent
        //    onClicked: GlobalStates.calendarVisible = !GlobalStates.calendarVisible
        //}
        ColumnLayout {
            anchors.fill: parent
            implicitHeight: parent.implicitHeight
            implicitWidth: parent.implicitWidth
            spacing: 0
            Text {
                id: timeText
                font.pixelSize: Looks.font.size.smaller
                font.family: Looks.font.family
                anchors.horizontalCenter: parent.horizontalCenter
                text: root.time
                color: Looks.colors.defaulttext
            }
            Text {
                id: dayText
                font.pixelSize: Looks.font.size.smallest
                font.family: Looks.font.family
                anchors.horizontalCenter: parent.horizontalCenter
                text: root.day
                color: Looks.colors.defaulttext
            }
        }
    }
}
