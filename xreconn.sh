
#!/bin/bash

#Configuracion de  para resolver direcciones ip de forma dinamica
#FASE 1
echo "========================================================================"
#activar smbd 
/etc/init.d/smbd start
#bajar la red para configurarla
ifdown eth0
#FASE 2 
echo "========================================================================"
#cambia las direcciones mac
macchanger -r eth0
macchanger -a eth0 
#el vendor y direcciones mac hana cambiado
#FASE 3
echo "========================================================================"
#se sube la red para actualizar la nueva configuracion
ifup eth0  | ifconfig | grep inet
#termina fase 3
echo "========================================================================" 
echo "=====================///..Analizando...///=============================="
exit 16



