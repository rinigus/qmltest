import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.11
import QtPositioning 5.11
import MapboxMap 1.0

Window {
    visible: true

    MapboxMap {
        id: map
        anchors.fill: parent
        center: QtPositioning.coordinate(59.91, 10.75) // Oslo
        zoomLevel: 14
        MapboxMapGestureArea {
            id: mouseArea
            map: map
        }
    }
}
