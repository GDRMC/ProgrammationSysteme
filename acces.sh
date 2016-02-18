#!/bin/bash
echo

echo Dossier fourni: $1
var1=$(ls $1 | wc -l)


EXEC=0
DIRECTORIES=0
LECT=0
WRITE=0
DR=0
i=0
for i in $1/*; do
	if [ -x $i ]; then
		EXEC=$(($EXEC + 1))
	fi
	if [ -r $i ]  && ! [ -x $i ]; then
		LECT=$(($LECT + 1))
	fi
	if [ -w $i ]; then
		WRITE=$(($WRITE + 1))
	fi
	if [ -d $i ]; then
		DR=$(($DR + 1))
	fi	
done
echo Le dossier contient $var1 élément*s*
echo Dossiers de fichiers: $DR
echo Fichiers accessibles en lecture seule: $LECT
echo Fichiers accessibles en écriture: $WRITE
echo Fichiers accessibles en écriture et exécutables: $EXEC
echo
