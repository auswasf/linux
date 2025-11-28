# to switch root user
su -

#permetion to login ssh
sed -i '/^#\?PermitRootLogin /c\PermitRootLogin yes'  /etc/ssh/sshd_config
sed -i '/^#\?PasswordAuthentication /c\PasswordAuthentication yes'  /etc/ssh/sshd_config
#restart ssh
systemctl restart ssh
#back to backup seting
cp /usr/share/openssh/sshd_config /etc/ssh/sshd_config
#transfer file 
scp "command line shell.sh" root@SERVER_IP:/root/



# copy file from flash to pc / change aus to username & MyUSB to flash name
cp /media/aus/MyUSB/install_odoo.sh /home/aus/
chmod +x ~/install_odoo.sh
./install_odoo.sh
