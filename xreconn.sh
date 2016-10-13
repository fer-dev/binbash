
#!/bin/bash

#Configuracion de  para resolver direcciones ip de forma dinamica
#FASE 1
echo "========================================================================"
#run smbd 
/etc/init.d/smbd start
#start network config
ifdown eth0
#FASE 2 
echo "========================================================================"
#change/spoof mac
macchanger -r eth0
macchanger -a eth0 
#change vendor and mac address
#FASE 3
echo "========================================================================"
#finish config and show ip adress it have to change.
ifup eth0  | ifconfig | grep inet
#termina fase 3
echo "========================================================================" 
echo "=====================///..Analizando...///=============================="
exit 16



