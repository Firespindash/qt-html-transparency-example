import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtWebEngine 1.2

Window {
    property int titlebar_wrapper_size:40
    id:registerWindow
    width: 800
    height: 600
    visible: true
    color: "transparent"

    flags: Qt.FramelessWindowHint |
           Qt.WA_TranslucentBackground |
           Qt.WindowMinimizeButtonHint |
           Qt.Window


    WebEngineView {
        anchors.fill: parent
        visible: true
        url: "file:///home/lucas/git/qt-html-transparency-example/index.html"
        backgroundColor: "transparent"
    }

    MouseArea {
        id:dragparentwindow
        width: parent.width
        height: 50
        hoverEnabled: false
        property real lastMouseX: 0
        property real lastMouseY: 0
        x: 0
        y: 0
        onPressed: {
            lastMouseX = mouseX
            lastMouseY = mouseY
        }
        onMouseXChanged: registerWindow.x += (mouseX - lastMouseX)
        onMouseYChanged: registerWindow.y += (mouseY - lastMouseY)
    }

    Rectangle {
        id:titlebar
        width: parent.width
        Rectangle {
            id:appclose
            x: 772
            y:10
            width: 20
            height: 20
            radius: 10
            anchors.rightMargin: 5
            anchors.right: parent.right
            rotation: 90
            visible: true
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ffe031"
                }

                GradientStop {
                    position: 1
                    color: "#f04579"
                }
            }
            MouseArea {
                x: 0
                y: 0
                width: 40
                height: 40
                hoverEnabled: true
                onEntered: appclose.color="#ddd"
                onExited: appclose.color="#fff"
                onClicked: Qt.quit()
            }
        }
        Rectangle {
        id:appmaximize
        x: 709
        y:10
        anchors.right: appclose.left
        width: 20
        height: 20
        radius: 10
        anchors.rightMargin: 15
        rotation: 90
        visible: true
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#e5f230"
            }

            GradientStop {
                position: 1
                color: "#54db63"
            }
        }
        MouseArea {
            width: parent.width
            height: parent.height
            property bool max
            hoverEnabled: true
            onClicked: if (max == true) { registerWindow.visibility = Window.Windowed; max=false }
                       else { registerWindow.visibility = Window.FullScreen; max=true }
        }
     }
        Rectangle {
        id:appminimize
        x: 739
        y:10
        anchors.right: appmaximize.left
        width: 20
        height: 20
        radius: 10
        anchors.rightMargin: 15
        rotation: 90
        visible: true
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#17ead9"
            }

            GradientStop {
                position: 1
                color: "#6078ea"
            }
        }
        MouseArea {
            width: parent.width
            height: parent.height
            hoverEnabled: true
            onClicked: registerWindow.visibility = Window.Minimized
        }
        }
}
}

/*##^##
Designer {
    D{i:1;anchors_height:485;anchors_width:705;anchors_x:71;anchors_y:58}
}
##^##*/
