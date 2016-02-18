#!/bin/bash
param=$1
len=${#param}
test=1
for((i=0;i<=len/2;i++)) do
	partie1="${param:$i:1}"
	partie2="${param:$len-$i-1:1}"
	if [ $partie1 != $partie2 ];then
		test=0
		break
	fi
done
if (( $test==1 )); then
	echo $param est un palindrome
elif (( $test==0 )); then
	echo $param n est pas un palindrome
fi
