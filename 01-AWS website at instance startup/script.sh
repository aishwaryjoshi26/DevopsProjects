curl -o 2135_mini_finance.zip  https://www.tooplate.com/zip-templates/2135_mini_finance.zip
sudo yum install unzip -y
unzip 2135_mini_finance.zip
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl status httpd
sudo cp -r 2135_mini_finance/* /var/www/html/
