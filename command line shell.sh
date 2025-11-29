#!/bin/sh

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


apt update
apt install postgresql -y




systemctl start postgresql
systemctl status postgresql


sudo apt install python3 python3-pip python3-venv -y
#sudo apt install build-essential libpq-dev libxml2-dev libxslt1-dev libjpeg-dev libldap2-dev libsasl2-dev libssl-dev -y
apt install python3-pip python3-dev libldap2-dev libsasl2-dev libssl-dev libxml2-dev libxslt1-dev libjpeg-dev -y
pip3 install ldap3 PyPDF2



ls -l /home/aus/Documents


cp /home/aus/Documents/odoo_17.0.deb /root/
cd /root


cp "/home/aws/Documents/odoo_19.0.20251126_all(1).deb" /root/
cd /root



apt --fix-broken install -y
apt install "./odoo_19.0.20251126_all(1).deb"


sudo apt install python3-pip -y
sudo pip3 install PyPDF2 ldap3


sudo apt install python3-asn1crypto python3-babel python3-cbor2 python3-cryptography \
python3-dateutil python3-docutils python3-geoip2 python3-gevent python3-greenlet \
python3-jinja2 python3-libsass python3-lxml python3-markupsafe python3-num2words \
python3-ofxparse python3-openpyxl python3-openssl python3-passlib python3-pil \
python3-polib python3-psycopg2 python3-qrcode python3-reportlab python3-rjsmin \
python3-serial python3-stdnum python3-tz python3-usb python3-vobject python3-werkzeug \
python3-xlrd python3-xlsxwriter python3-xlwt python3-zeep fonts-inconsolata fonts-font-awesome \
fonts-roboto-unhinted gsfonts python3-freezegun python3-magic python3-renderpm -y



