#!/system/bin/sh
#Script V1.0

echo "$cyan
  __  __        _____       _           _   
 |  \/  |      |  __ \     | |         | |  
 | \  / |_ __  | |__) |___ | |__   ___ | |_ 
 | |\/| | '__| |  _  // _ \| '_ \ / _ \| __|
 | |  | | |_   | | \ \ (_) | |_) | (_) | |_ 
 |_|  |_|_(_)  |_|  \_\___/|_.__/ \___/ \__|"
 sleep 4
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
echo "$cyan []====================================================[]"

echo "$purpleClaro               Mr Robot"              

echo "                      COMPARTILHAR NET VPN "

echo "$cyan []=====================================================[]"
sleep 3
clear
echo "$verde                       Ola qual seu nome?"
read resposta
clear
echo  "$verde   Ola $resposta deseja compartilha sua net VPN?  (sim/nao)?"
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
sleep 1
id=`id`; 
id=`echo ${id#*=}`; 
id=`echo ${id%%\(*}`; 
id=`echo ${id%% *}`
if [ "$id" != "0" ] && [ "$id" != "root" ]; then
echo " "$vermelho
echo "        []==================================[]"
echo "        [] esse script nao funciona sem root[]"
echo "        []==================================[]"
sleep 3
     echo "ops, "$resposta" você nao deu acesso a root no terminal"
	sleep 1
    echo Para da acesso ao root no terminal
	echo "escreva 'su' e de enter, para da acesso root ao terminal"
     sleep 4
     clear
     exit 1
else
    echo "$corPadrao                                                                                            ["$verde" OK "$corPadrao"]"
	echo "$cyan              [Compartilhando Conexao]"
	echo ""$purpleClaro
	sleep 4
clear
    echo "                                1%"
sleep 1
clear
    echo "                               10%"
sleep 1
clear
    echo "                               20%"
sleep 1
clear
    echo "                               30%"
sleep 1
clear
    echo "                               40%"
sleep 1
clear
    echo "                               50%"
sleep 1
clear
    echo "                               60%"
sleep 1
clear
    echo "                               70%"
sleep 1
clear
    echo "                               80%"
sleep 1
clear
    echo "                               90%"
sleep 1
clear
    echo "                              100%"
sleep 1
echo Sucesso!
sleep 2
clear
fi
sleep 1
clear
iptables -t filter -F FORWARD
iptables -t nat -F POSTROUTING
iptables -t filter -I FORWARD -j ACCEPT
iptables -t nat -I POSTROUTING -j MASQUERADE
ip rule add from 192.168.43.0/24 lookup 61
ip route add default dev tun0 scope link table 61
ip route add 192.168.43.0/24 dev wlan0 scope link table 61
ip route add broadcast 255.255.255.255 dev wlan0 scope link table 61

clear
echo compartilhamento feito com sucesso! 
echo ☺
                echo
echo "$cyan []====================================================[]"

echo "$purpleClaro    Nao Ultilize esse script si vc nao sabe pra que serve"                                                 
echo "      Creditos a GLEMYSSON"
echo "$cyan []====================================================[]"
sleep 3
exit 69
