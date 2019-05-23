import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    visible: true

    Rectangle {
        color: "blue"
        anchors.fill: parent

        Text {
            text: "Hello world!"
            anchors.centerIn: parent
            font.pointSize: 24
            font.bold: true
        }
    }
}
