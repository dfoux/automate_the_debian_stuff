#!/bin/bash

VERDE="\033[1;32m"
SEMCOR="\033[0m"

echo

echo -e "sudo dpkg --configure -a"
echo -e "1: ${VERDE}Opção '-a' = configura todos os pacotes descompactados por configurar${SEMCOR}"
sudo dpkg --configure -a

echo

echo -e "sudo apt-get install -f"
echo -e "2: ${VERDE}Opção '-f' =instala e corrige todas as dependências por instalar e corrigir${SEMCOR}"
sudo apt-get install -f

echo

echo -e "sudo apt-get update"
echo -e "3: ${VERDE}atualiza a lista de pacotes por atualizar (upgrade)${SEMCOR}"
sudo apt-get update

echo

echo -e "sudo apt-get upgrade"
echo -e "4: ${VERDE}atualiza todas as 'aplicações'(todos os pacotes)${SEMCOR}"
sudo apt-get upgrade

echo

echo -e "sudo apt-get dist-upgrade"
echo -e "5: ${VERDE}atualização dos pacotes da distribuição Linux${SEMCOR}"
sudo apt-get dist-upgrade

echo

echo -e "sudo apt-get autoremove --purge"
echo -e "6: ${VERDE}remove pacotes que já não estão em utilização${SEMCOR}"
sudo apt-get autoremove --purge

echo

echo -e "sudo apt-get clean 
sudo apt-get autoclean"
echo -e "7: ${VERDE}limpeza da cache do repositório e de outros ficheiros locais${SEMCOR}"
sudo apt-get clean 
sudo apt-get autoclean

echo -e "${VERDE}System is up to date and cleaned${SEMCOR}"
