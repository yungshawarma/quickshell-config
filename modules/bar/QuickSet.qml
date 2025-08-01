import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire
// additional imports
import "root:/config"
import "root:/services"

Item {
    id: root
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter
    implicitHeight: bar.barHeight
    implicitWidth: quickSetRow.implicitWidth
    Rectangle {
        implicitHeight: bar.barHeight
        implicitWidth: quickSetRow.implicitWidth
        color: "transparent"
        RowLayout {
            id: quickSetRow
            spacing: Looks.size.barMiniSpacing
            anchors.fill: parent
            Item {
                id: volumeButton
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: volSymbol.width
                Text {
                    id: volSymbol
                    font.pixelSize: Looks.font.size.large
                    font.family: Looks.font.family
                    anchors.centerIn: parent
                    text: Audio.sinkVolume
                    color: Looks.colors.yellow
                }
            }
            Item {
                id: micButton
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: micSymbol.width
                Text {
                    id: micSymbol
                    font.pixelSize: Looks.font.size.large
                    font.family: Looks.font.family
                    anchors.centerIn: parent
                    text: Audio.source?.audio?.muted ? "" : ""
                    color: Looks.colors.orange
                }
            }
            Item {
                id: brightButton
                visible: false
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: brightSymbol.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: Brightness.decreaseBrightness()
                }
                Text {
                    id: brightSymbol
                    font.pixelSize: Looks.font.size.large
                    font.family: Looks.font.family
                    anchors.centerIn: parent
                    text: "Hello"
                    color: Looks.colors.cyan
                }
            }
            Item {
                id: networkButton
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: nwSymbol.width
                Text {
                    id: nwSymbol
                    font.pixelSize: Looks.font.size.large
                    font.family: Looks.font.family
                    anchors.centerIn: parent
                    text: Network.nfSymbol
                    color: Network.wifi ? Looks.colors.cyan : Network.ethernet ? Looks.colors.green : Looks.colors.defaulttext
                }
            }
            Item {
                id: bluetoothButton
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter
                implicitWidth: btSymbol.width
                Text {
                    id: btSymbol
                    font.pixelSize: Looks.font.size.large
                    font.family: Looks.font.family
                    anchors.centerIn: parent
                    text: Bluetooth.bluetoothEnabled ? "󰂯" : "󰂲"
                    color: Bluetooth.bluetoothConnected ? Looks.colors.blue : Looks.colors.defaulttext
                }
            }
        }
    }
}
