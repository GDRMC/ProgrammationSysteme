#!/bin/bash
# on entre un dossier en paramètre

cd $1
param=$(echo * || grep '\$')
declare -A dico
 
IFS=' ' read -r -a tableau <<< "$param"
 
    for element in "${tableau[@]}"
    do
        extension=${element##*.}
        dico["$extension"]=$((dico["$extension"]+1))
    done
 
    for element in "${!dico[@]}"
    do
        printf "%s\t%s\n" "$element" "${dico[$element]}"
    done
 
#echo ${dico[*]}