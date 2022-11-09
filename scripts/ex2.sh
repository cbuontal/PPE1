#!/usr/bin/env bash

ANNEE=$1
MOIS=$2
NOMBRE_LIEUX=$3

if [[ -z $ANNEE || -z $MOIS || -z $NOMBRE_LIEUX ]]
then
	echo "Il faut fournir 3 arguments en ligne de commande : année, mois, nombre de lieux."
	exit
fi

#if [[ "$ANNEE" = "\*" ]]
#then
#	ANNEE="\\*"
#fi
#
#if [[ "$MOIS" = "\*" ]]
#then
#	MOIS="\\*"
#fi

echo "Pour l'année $ANNEE et le mois $MOIS : " > sortie.txt
grep Location $ANNEE\_$MOIS\_*.ann | sort -k 5 | uniq -c -f 5 | sort -r | head -n $NOMBRE_LIEUX >> sortie.txt

# les localisations
# on trie par le 5ème champ = nom du lieu
# on compte (-c) combien de fois on a de lignes avec le même 5ème champ (-f 5)
# => strings qui débutent par le nombre d'occurrences
# on range par occurrences décroissantes (-r)