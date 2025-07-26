import QtQuick
import Quickshell
import "./modules"
import "./modules/bar"
import "./config"

ShellRoot {
  property bool enableBar: true

  LazyLoader {active: enableBar; component: Bar{} }
}
