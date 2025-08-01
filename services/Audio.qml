pragma Singleton
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

/**
 * A nice wrapper for default Pipewire audio sink and source.
 */
Singleton {
    id: root

    property bool ready: Pipewire.defaultAudioSink?.ready ?? false
    property PwNode sink: Pipewire.defaultAudioSink
    property PwNode source: Pipewire.defaultAudioSource
    property string sinkVolume: root.sink.audio.muted ? "" : root.sink.audio.volume > 0.80 ? "" : root.sink.audio.volume > 0.5 ? "" : ""

    signal sinkProtectionTriggered(string reason)

    PwObjectTracker {
        objects: [sink, source]
    }

    Connections {
        // Protection against sudden volume changes
        target: sink?.audio ?? null
        property bool lastReady: false
        property real lastVolume: 0
    }
}
