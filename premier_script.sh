#!usr/bin/bash
# traitement de l'année 2016, on crée on écrase le fichier sortie
echo "pour l'année 2016" > sortie.txt
grep "Location" 2016*.ann | wc -l >> sortie.txt
#traitement de l'année 2017, on écrit à la suite du fichier
echo "pour l'année 2017" >> sortie.txt
grep "Location" 2017*.ann | wc -l >> sortie.txt
# idem pour 2018
echo "pour l'année 2018" >> sortie.txt
grep "Location" 2018*.ann | wc -l >> sortie.txt
