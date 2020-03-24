## dvkbuntu-vocalfly
# Vocalisation de l'interface de DVKBuntu

Pour tout ceux qui sont sous DVKBuntu (ou même sous KDE Plasma comme avec Kubuntu), vous pouvez tester notre nouveau logiciel qui améliore l'interface de DVKBuntu. Cette nouvelle technologie est une vocalisation de l'interface DVKBuntu là nous avons commencé par le DVKMenu. Cette Technologie se nomme VocalFly !

# Les Prérequis
 1 - Si vous êtes sous DVKBuntu toutes les dépendances seront déjà installé.
 2 - Sur une autre distribution autre que DVKBuntu : un bureau KDE Plasma, le latte-dock installé et opérationnel, le service de TTS Google_Speech qui dépend de python3 (après installation de python3 il faut faire par exemple `pip3 install google_speech` sous *kubuntu*, ou `pip install google_speech` pour *Arch*).)

 
# Pour installer les éléments :
```
git clone https://github.com/handyopensource/dvkbuntu-vocalfly
cd dvkbuntu-vocalfly
chmod +x install.sh
./install.sh
```

Une fois l'installation terminée, veuillez redémarrer votre ordinateur !

# Si vous n'utilisez pas le DVKMenu :
ajoutez le à votre interface (cf. https://youtu.be/Tcfi6fivGys) , il s'agit d'un menu assez simple avec de grosses icônes qui grossissent au passage de la souris.

# Pour utiliser d'autre langue à vocaliser :
Le programme va lire la langue de votre système afin de s'adapter à la langue de l'utilisateur.
