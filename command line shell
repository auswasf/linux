# to switch root user
su -


sed -i '/^#\?PermitRootLogin /c\PermitRootLogin yes'  /etc/ssh/sshd_config

sed -i '/^#\?PasswordAuthentication /c\PasswordAuthentication yes'  /etc/ssh/sshd_config

systemctl restart ssh

cp /usr/share/openssh/sshd_config /etc/ssh/sshd_config



# copy file from flash to pc / change aus to username & MyUSB to flash name
cp /media/aus/MyUSB/install_odoo.sh /home/aus/
chmod +x ~/install_odoo.sh
./install_odoo.sh
