pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root
    function hexToRgb(hex, alpha) {
        if (hex[0] === "#") {
            hex = hex.slice(1);
        }
        let r = parseInt(hex.slice(0, 2), 16) / 255;
        let g = parseInt(hex.slice(2, 4), 16) / 255;
        let b = parseInt(hex.slice(4, 6), 16) / 255;
        let a = alpha;

        return Qt.rgba(r, g, b, a);
    }
    function cleanMusicTitle(title) {
        if (!title) {
            return "";
        }
        title = title.replace(/^ *\([^)]*\) */g, " "); // Round brackets
        title = title.replace(/^ *\[[^\]]*\] */g, " "); // Square brackets
        title = title.replace(/^ *\{[^\}]*\} */g, " "); // Curly brackets

        return title.trim();
    }
}
