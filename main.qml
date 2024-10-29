import QtQuick 2.15
import QtQuick.Window 2.15

import QtQuick.Controls 2.15

import QtQuick.Layouts

Window {
    minimumWidth: 640
    minimumHeight: 480
    width: 640
    height: 480
    visible: true
    title: qsTr("Player")


    ColumnLayout{
        anchors.fill: parent
        spacing: 2

        // панель для отображения видео
        Rectangle {
            id: screen

            color: 'plum'
            Layout.fillWidth: true
            Layout.fillHeight: true

            Text {
                anchors.centerIn: parent
                font.pointSize: 24
                text: "Screen (" + parent.width + 'x' + parent.height + ")"
            }
        }

        // панель управления
        Rectangle {
            id: controls

            Layout.fillWidth: true
            Layout.preferredHeight: 25

            RowLayout {
                anchors.fill: parent
                spacing: 2

                // панель для кнопок
                Rectangle {
                    id: rtc_buttons

                    color: 'green'
                    Layout.fillHeight: true
                    Layout.minimumWidth: 5 * (btn_play.width + buttons.spacing)  // number of buttons * (size of buttons + distance between buttons)

                    RowLayout {
                        id: buttons

                        anchors.fill: parent
                        spacing: 2

                        Button {
                            id: btn_play
                            text: "▶️"
                        }
                        Button {
                            id: btn_pause
                            text: "⏸️"
                        }
                        Button {
                            id: btn_stop
                            text: "⏹"
                        }
                        Button {
                            id: btn_rewind
                            text: "⏪️"
                        }
                        Button {
                            id: btn_forward
                            text: "⏩️"
                        }
                    }
                }

                // панель для индикаторов
                Rectangle {
                    id: rtc_indicators

                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ProgressBar {
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}
