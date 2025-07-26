import QtQuick
import Quickshell

Singleton {
  id: root
  function hexToRgb(hex, alpha = 1.0) {
    if (hex.charAt(0) === "#") {
      hex = hex.slice(1);
    }
    let r = parseInt(hex.slice(0, 2), 16) / 255;
    let g = parseInt(hex.slice(2, 4), 16) / 255;
    let b = parseInt(hex.slice(4, 6), 16) / 255;

    return Qt.rgba(r, g, b, alpha);
  }
}
