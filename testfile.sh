touch /tmp/testfile.txt

echo $ansible_sudo_pass | sudo -S yum install -y httpd
echo $ansible_sudo_pass | sudo -S chmod -R 777 /var/www/html
echo $ansible_sudo_pass | sudo -S echo 'Hello ' $NAME > /var/www/html/index.html

echo $ansible_sudo_pass | sudo -S sudo systemctl enable httpd
echo $ansible_sudo_pass | sudo -S sudo systemctl stop firewalld
echo $ansible_sudo_pass | sudo -S sudo systemctl stop httpd
echo $ansible_sudo_pass | sudo -S sudo systemctl start httpd
touch /tmp/testfileend.txt