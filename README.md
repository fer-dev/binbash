# changer.sh
firts thing you have to do to run the script is make it executable, now type chmod +x changer.sh or chmod 0755 script.sh then you make cp like that:

$ cp /path/to/changer.sh /bin
$export PATH=$PATH:~/bin/changer.sh
and its done.

-->edit the file /etc/network/interfaces putting this code

add this lines to the file:

.#The primary network interface
.#allow-hotplug eth0
.#iface eth0 inet dhcp

.#Dhcp IP address
auto eth0
iface eth0 inet dhcp

# how can i use it?
this script change your mac address and ip address using the network protocol DHCP, without down your internet, you can automatize it in crontabs, using crontab -e to add a new script, is very util to avoid attacks from a remote computer that can steal your ip address and mac address.
use it to avoid packet injections and DOS attacks.
don´t use static ip anymore!

