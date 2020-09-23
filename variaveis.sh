#!/usr/bin/env bash

NOME="Curso de Shell Script"

LIVRO="POO em 21 dias
aprenda"

echo "$NOME"
echo
echo "$LIVRO"
echo

NUM1=33
NUM2=44

TOTAL=$(($NUM1 + $NUM2))

echo "$TOTAL"
echo

SAIDA_CAT="$(cat /etc/passwd | grep dell)"

echo "$SAIDA_CAT"

echo "-----------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"

echo "Todos os parâmetros: $*"

echo "Quantos parâmetros? $#"

echo "Saída do último comando: $?"

echo "PID: $$"

echo $0
