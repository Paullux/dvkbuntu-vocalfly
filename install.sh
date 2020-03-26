#!/bin/bash

##Ajout du nouveau module pour le language QML en Qt/C++ :
#Création du répertoire :
mkdir -p /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/
#Copie des fichiers de l'extension :
sudo cp build-MyQMLLauncher-Desktop-Release/libMyQMLLauncher.so /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/
sudo cp build-MyQMLLauncher-Desktop-Release/qmldir /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/

##Ajout de script de création des waves à partir des textes :
sudo cp createWaveFromItem /usr/bin/

##Ajout du dvkmenu :
#Création du répertoire :
mkdir -p "$HOME/.local/share/plasma/plasmoids/"
#Copie du menu :
cp -r dvkmenu "$HOME/.local/share/plasma/plasmoids/" 

##Copie des fichiers modifier pour le Latte-Dock :
sudo cp AppletItem.qml /usr/share/plasma/plasmoids/org.kde.latte.containment/contents/ui/applet/
sudo cp ToolTipInstance.qml /usr/share/plasma/plasmoids/org.kde.latte.plasmoid/contents/ui/previews/
sudo cp TaskItem.qml /usr/share/plasma/plasmoids/org.kde.latte.plasmoid/contents/ui/task/

##Copie Horloges :
#Digital Clock :
sudo cp DigitalClock.qml /usr/share/plasma/plasmoids/org.kde.plasma.digitalclock/contents/ui/
#Analog Clock :
sudo cp analogclock.qml /usr/share/plasma/plasmoids/org.kde.plasma.analogclock/contents/ui/
#Script Lecture heure :
sudo cp LectureHeure /usr/bin/
