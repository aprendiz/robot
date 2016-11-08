#!/bin/bash
#clean V1.0
####################################
####################################
#Cores
corPadrao="\033[0m"
azul="\033[0;34m"
purpleClaro="\033[1;35m"
verde="\033[1;32m"
cyan="\033[1;36m"
vermelho="\033[0;31m"
###################################
###################################
clear
echo "$cyan []========================================================[]"

echo "$purpleClaro           BY Mr. Robot"              

echo "               CLEAN NO SERVIDOR "

echo "$perpleClaro        Versao 1.0 "

echo "$cyan []========================================================[]"
sleep 3
clear
echo "$purpleClaro                       Ola qual seu nome?"
read resposta
clear
echo  "$purpleClaro   Ola $resposta  gostaria de realizar clean?  (sim/nao)?"
read s
if [ "$s" = "sim" ]
then
echo " "
fi

if [ "$s" = "nao" ]
then
echo " "$vermelho
echo "  [ok]"
echo " saindo..."
sleep 2
exit 1
fi
clear

sleep 4
echo "$cyan   Vamos verificar a memoria do servidor"
sleep 3

free -h
sleep 4
echo "$cyan   Aguarde ate que finalize o processo"
sleep 3

echo "$vermelho   Vire Root"
sleep 3

sudo su

apt-get updade

free -h 

echo 3 | sudo tee /proc/sys/vm/drop_caches apt-get clean && apt-get autoclean

sudo apt-get autoremove

sudo apt-get install deborphan -y

sudo apt-get remove $(deborphan) -y

sync && echo 1 > /proc/sys/vm/drop_caches

sync && echo 2 > /proc/sys/vm/drop_caches

sync && echo 3 > /proc/sys/vm/drop_caches

clear
    echo "$verde                                                1%"
sleep 1
clear
    echo "$cyan                                                 10%"
sleep 1
clear
    echo "$cyan                                                 20%"
sleep 1
clear
    echo "$cyan                                                 30%"
sleep 1
clear
    echo "$cyan                                                 40%"
sleep 1
clear
    echo "$purpleClaro                                          50%"
sleep 1
clear
    echo "$cyan                                                 60%"
sleep 1
clear
    echo "$cyan                                                 70%"
sleep 1
clear
    echo "$cyan                                                 80%"
sleep 1
clear
    echo "$cyan                                                 90%"
sleep 1
clear
    echo "$purpleClaro                                          100%"
sleep 1
clear

free -h
sleep 5

clear
echo "$purpleClaro clean feito com sucesso! 
echo ☺
                echo
echo "$cyan []====================================================[]"

echo "$purpleClaro Nao Ultilize esse script si vc nao sabe pra que serve"                                                 
echo "      Creditos a @Aprendiz_Jr"
echo "$cyan []====================================================[]"
sleep 3
exit 69
