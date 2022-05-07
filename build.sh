#!/bin/bash

sed -i "s,path,$(pwd),g" main.qml
mkdir build && cd build
qmake ../window-content.pro -spec linux-g++ && make
echo "Type 'cd build && ./window-content' to run."
