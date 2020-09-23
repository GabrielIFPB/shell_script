#!/usr/bin/env bash

VAR1=""
VAR2=""

if [[ "$VAR1" = "$VAR2" ]]; then
	echo "São iguais."
fi

if [[ "$VAR1" = "$VAR2" ]] 
then
	echo "São iguais."
fi

if test "$VAR1" = "$VAR2"; then
	echo "São iguais."
fi

if test "$VAR1" = "$VAR2" 
then
	echo "São iguais."
fi

if [ "$VAR1" = "$VAR2" ]; then
	echo "São iguais."
fi

if [ "$VAR1" = "$VAR2" ] 
then
	echo "São iguais."
fi

[ "$VAR1" = "$VAR2" ] && echo "São iguais." # true

[ "$VAR1" = "$VAR2" ] || echo "São iguais." # false
