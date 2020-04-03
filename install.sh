#!/bin/bash

##Ajout du nouveau module pour le language QML en Qt/C++ :
#Création du répertoire :
mkdir -p /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/
#Copie des fichiers de l'extension :
sudo cp build-MyQMLLauncher-Desktop-Release/libMyQMLLauncher.so /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/
sudo cp build-MyQMLLauncher-Desktop-Release/qmldir /usr/lib/x86_64-linux-gnu/qt5/qml/org/dvkbuntu/dvkmenulauncher/

##Voix :
#Voix Google :
sudo pip3 install google_speech
#Voix EspeakNG :
sudo apt install espeak-ng


##Ajout de la GUI :
#Ajout du binaire :
sudo cp GUI/VocalFly /usr/bin/
#Ajout de l'icône
sudo cp GUI/vocalflyicon.png /usr/share/icons/
#Ajout du fichier desktop :
sudo cp GUI/VocalFly.desktop /usr/share/applications/

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

##Bar supérieur :
#QuickLaunch :
sudo cp IconItem.qml /usr/share/plasma/plasmoids/org.kde.plasma.quicklaunch/contents/ui/
#Gestionnaire des tâches :
sudo cp Task.qml /usr/share/plasma/plasmoids/org.kde.plasma.taskmanager/contents/ui/
#Power Bouton :
sudo cp lockout.qml /usr/share/plasma/plasmoids/org.kde.plasma.lock_logout/contents/ui/
#Zone de Notifications :
sudo cp AbstractItem.qml /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray/contents/ui/items/
sudo cp PlasmoidItem.qml /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray/contents/ui/items/
sudo cp StatusNotifierItem.qml /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray/contents/ui/items/
sudo cp ExpanderArrow.qml /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray/contents/ui/


#logout :
sudo cp Logout.qml /usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/logout/

#Fenetre :
sudo cp DecorationButton.qml /usr/share/kwin/aurorae/
sudo cp PlastikButton.qml /usr/share/kwin/decorations/kwin4_decoration_qml_plastik/contents/ui/

#Wrapper
sudo cp google_speech-multilanguage /usr/local/bin/
sudo cp espeak-ng-multilanguage /usr/bin/

#service tts alternatives :
sudo update-alternatives --install /etc/alternatives/tts.gz tts "/usr/local/bin/google_speech-multilanguage" 20
sudo update-alternatives --install /etc/alternatives/tts.gz tts "/usr/bin/espeak-ng-multilanguage" 15
sudo update-alternatives --remove tts /usr/bin/espeak 
sudo update-alternatives --remove tts /usr/bin/espeak_fr
sudo update-alternatives --remove tts /usr/local/bin/google_speech
sudo update-alternatives --remove tts /usr/local/bin/google_speech_fr
