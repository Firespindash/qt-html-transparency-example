# qt-html-transparency-example
An example of a window built in **Qt** and **HTML**/**CSS** that can let you see-through your desktop.

![qt-window](futuristic-app.png)

## Build

Run the *build.sh* script, feel free to look at it or at the source before using it. \
If you have any problems when attempting to compile it. Try using `make qmake_all`. The process the IDE does is `make -j4 in .` and for cleaning `make clean -j4 in .`, it may help you. Also the IDE uses the absolute path for the files.

## Details

I tested it in **Kde Manjaro** and **Mate Archlinux**, however it may work in other environments or systems. To make it blur use the compositor of your system. \
You can use it to make beautiful applications, you just need to change the **HTML** and **CSS** files, and then reload. Don't forget to set the main background color with some value of transparency. The window is not resizable, but maybe adding bigger borders or making something similar to the code for dragging the window bring this feature. The roundness in the corners is also made by the compositor, but it is possible to make the window round with **Qt**. I made it mainly using the **QtCreator** IDE. The path for the *index.html* seems to work just as absolute path, so I had to substitute it in the file, which is the reason I add it on the install script. The other solution would be host it online, to use the url. I think it is a Qresources bug.

## How it works

The secret is the 'setAttribute(Qt::WA_TranslucentBackground);' then the 'setAutoFillBackground(true)' and the 'setStyleSheet("background: transparent;");' lines in the *mainwindow.cpp* file. Also set the color of window class to "transparent" and import the 1.2 or newer version of **QtWebEngine** and set the BackgroundColor of the webengineview class to "transparent" in the *main.qml* file. And then set the background color of the *style.css* file to use alpha channel (transparency).
