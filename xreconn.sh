!/bin/bash
LANG=C
function lines()
{
        printf  "\e[0;31m]"
        printf "0%.s---------------------->>>\e[0m"
        printf  "\e[0m"
        echo -e $(flux1)
        printf "\e[0;36m]"
        printf "0%.s---------------------->>>\e[0m"
        printf "\e[0;39m"
}
#dash
lines
        service smbd start
flux1
        ifdown eth0
lines
        macchanger -r eth0
        macchanger -a eth0
lines
        ifup eth0
#iptables
function iptab
{
        iptables -
}
exit 16



