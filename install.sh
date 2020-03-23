#!/bin/bash

mkdir -p /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/

sudo cp build-MyQMLLauncher-Desktop-Release/libMyQMLLauncher.so /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/
sudo cp build-MyQMLLauncher-Desktop-Release/qmldir /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/

sudo cp createWaveFromItem /usr/bin/

mkdir -p "$HOME/.local/share/plasma/plasmoids/"

cp -r dvkmenu "$HOME/.local/share/plasma/plasmoids/" 
