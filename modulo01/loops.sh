#!/usr/bin/env bash

echo "===== for 1"

for (( i = 0; i < 10; i++ )); do
	echo "$i"
done

echo "===== for 2 (seq)"

for i in $(seq 10); do 
	echo "$i"
done

echo "===== for 3 (array)"

Frutas=(
	'abacaxi'
	'uva'
	'laramja'
	'maçã'
)

for i in "${Frutas[@]}"; do 
	echo "$i"
done

echo "===== while"

contador=0

while [[ $contador -lt ${#Frutas[@]} ]]; do
	echo "$contador"
	contador=$(( $contador + 1 )) # ou $contador++
done
