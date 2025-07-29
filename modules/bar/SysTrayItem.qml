import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets
// additional imports
import "root:/config"

MouseArea {
    id: root

    required property var bar
    required property SystemTrayItem item
    required property var systrayWidget
    property bool targetMenuOpen: false
    property int trayItemWidth: Looks.font.size.hugeass

    acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
    Layout.fillHeight: true
    width: trayItemWidth
    height: trayItemWidth
    hoverEnabled: true

    onClicked: function (mouse) {
        if (mouse.button === Qt.LeftButton) {
            item.activate();
        } else if (mouse.button === Qt.RightButton) {
            if (item.hasMenu) {
                menu.open();
            }
        } else if (mouse.button === Qt.MiddleButton) {
            item.secondaryActivate();
        }
    }
    onWheel: function (wheel) {
        item.scroll(wheel.angleDelta.x, wheel.angleDelta.y);
    }
    QsMenuAnchor {
        id: menu
        menu: root.item.menu
        anchor.rect.x: {
            var totalX = root.x + systrayWidget.x - parent.height / 2;
            var currentItem = systrayWidget.parent;
            while (currentItem && currentItem !== bar) {
                totalX += currentItem.x;
                currentItem = currentItem.parent;
            }
            return totalX;
        }
        anchor.rect.y: {
            var totalY = root.y + systrayWidget.y + parent.height - 8;
            var currentItem = systrayWidget.parent;
            while (currentItem && currentItem !== bar) {
                totalY += currentItem.y;
                currentItem = currentItem.parent;
            }
            return totalY;
        }
        anchor {
            window: bar
        }
    }
    Image {
        id: trayIcon
        visible: true
        source: root.item.icon
        anchors.centerIn: parent
        width: trayItemWidth
        height: trayItemWidth
    }
}
