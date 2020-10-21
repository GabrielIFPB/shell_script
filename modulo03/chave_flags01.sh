#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuários do /etc/passwd
#
# Site:       https://dominio.com.br
# Autor:      Jerônimo Gabriel da Silva
# Manutenção: Jerônimo Gabriel da Silva
#
# ------------------------------------------------------------------------ #
#  Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo ficará em maiúculo e em ordem alfabética
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 10/10/2020, gabriel_kaguya:
#		- Adicionado -s, -h & -v
#	v1.1 11/10/2020, gabriel_kaguya:
#		- Trocamos IF pelo CASE
# 		- Adicionamos basename
#	v1.2 12/10/2020, gabriel_kaguya:
# 		- Adicionado -m
# 		- Adicionado 2 flags
#   v1.3 13/10/2020, gabriel_kaguya:
#     - Adicionado while com shift e teste de variável
#     - Adicionado 2 flags
# 
# 
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17(1)-release
#
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"

MENSAGEM_USO="
	$(basename $0) - [OPÇÕES]

		-h - Menu de ajuda
		-v - Versão
		-s - Ordenar a saída
		-m - Coloca em maiúculo
"

VERSAO="v1.3"

CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

while [[ -n "$1" ]]; do
	case "$1" in
		-h )
			echo "$MENSAGEM_USO" && exit 0;;
		-v )
			echo "$VERSAO" && exit 0;;
		-s )
			CHAVE_ORDENA=1;;
		-m )
			CHAVE_MAIUSCULO=1;;
		* )
			echo "Opção inválida, valie o -h" && exit 1 ;;
	esac
	shift
done
	

[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)

[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"

# ------------------------------------------------------------------------ #
