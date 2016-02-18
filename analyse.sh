#!/bin/bash

param=$1

IFS='/' read -r -a tableau <<< "$param"
affichage=""
fichier=""

if [[ ${1:0:1} == "/" ]] ; then echo "Chemin absolu"; else echo "Chemin relatif"; fi
for dossier in "${tableau[@]}"
do
	if [[ $dossier == *"."* ]] 
	then
		fichier=$dossier
	else
		affichage="$affichage $dossier"
	fi
done

echo $affichage
extension=${param##*.}
echo $fichier
echo $extension