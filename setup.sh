echo "on va faire la mise a jour"
sudo apt-get update 
sudo apt-get install asterisk asterisk-dahdi
echo "mise a jour et instalation faites"

sudo mv /etc/asterisk/sip.conf /etc/asterisk/sip.conf.b 
sudo mv /etc/asterisk/extensions.conf /etc/asterisk/extensions.conf.b

sudo cp ./sip.conf /etc/asterisk/sip.conf

sudo cp ./extensions.conf /etc/asterisk/extensions.conf

sudo chown asterisk:asterisk /etc/asterisk/sip.conf /etc/asterisk/extensions.conf 
sudo chmod 640 /etc/asterisk/sip.conf /etc/asterisk/extensions.conf

sudo systemctl restart asterisk 
sudo systemctl status asterisk

echo "fait"
echo "votre extensions sont 1001 et 1002 mot de passe 1234 et 5678"
#install a sip client #sudo apt-get install linphone
