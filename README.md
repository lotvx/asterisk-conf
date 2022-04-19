# asterisk-conf
#fast asterisk config

sudo apt-get update
sudo apt-get install asterisk asterisk-dahdi

#check status
sudo systemctl status asterisk

#sudo systemctl start asterisk
#sudo systemctl stop asterisk
#sudo systemctl restart asterisk

#ls /etc/asterisk

#backup original files
sudo mv /etc/asterisk/sip.conf /etc/asterisk/sip.conf.b
sudo mv /etc/asterisk/extensions.conf /etc/asterisk/extensions.conf.b

#add sip configuration
sudo nano /etc/asterisk/sip.conf

#add users extensions
sudo nano /etc/asterisk/extensions.conf

#change permissions to the new created files
sudo chown asterisk:asterisk /etc/asterisk/sip.conf /etc/asterisk/extensions.conf
sudo chmod 640 /etc/asterisk/sip.conf /etc/asterisk/extensions.conf

#restart the asterisk service
sudo systemctl restart asterisk
sudo systemctl status asterisk

#install a sip client
#sudo apt-get install linphone
