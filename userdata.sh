#!/bin/bash
apt update -y
apt install -y apache2
echo "<h1>Deployed via Terraform + Jenkins!</h1>" > /var/www/html/index.html
systemctl enable apache2
systemctl start apache2
