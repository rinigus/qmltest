import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.11
import QtPositioning 5.11

Window {
    visible: true

    Plugin {
        id: mapPlugin
        name: "mapboxgl"
        // specify plugin parameters if necessary
        PluginParameter {
            name: "mapboxgl.mapping.additional_style_urls"
            value: "http://localhost:8553/v1/mbgl/style?style=osmbright"
        }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(59.91, 10.75) // Oslo
        zoomLevel: 4
    }
}
