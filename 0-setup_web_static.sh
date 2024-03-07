#!/usr/bin/env bash
<<<<<<< HEAD
#A script to set up web servers for the deployment of web_static
=======
# Bash script that sets up web servers for the deployment of web_static
>>>>>>> 2c29b5e3d36455ec5ccc7fe75e20584c076d1ab9
sudo apt-get update
sudo apt-get -y install nginx
sudo ufw allow 'Nginx HTTP'

sudo mkdir -p /data/
sudo mkdir -p /data/web_static/
sudo mkdir -p /data/web_static/releases/
sudo mkdir -p /data/web_static/shared/
sudo mkdir -p /data/web_static/releases/test/
<<<<<<< HEAD
sudo touch /data/web_static/releases/test/index.html
=======
sudo mkdir -p /data/web_static/releases/test/index.html
>>>>>>> 2c29b5e3d36455ec5ccc7fe75e20584c076d1ab9
sudo echo "<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
<<<<<<< HEAD
</html>" | sudo tee /data/web_static/releases/test/index.html
=======
</html>" | sudo tee /data/web_static/releases/text/index.html
>>>>>>> 2c29b5e3d36455ec5ccc7fe75e20584c076d1ab9

sudo ln -s -f /data/web_static/releases/test/ /data/web_static/current

sudo chown -R ubuntu:ubuntu /data/

<<<<<<< HEAD
sudo sed -i '/listen 80 default_server/a location /hbnb_static { alias /data/web_static/current/;}' /etc/nginx/sites-enabled/default
=======
sudo sed -1 '/listen 80 default_server/a location /hbnb_static { alias /data/web_static/current/;}' /etc/nginx/sites-enabled/default
>>>>>>> 2c29b5e3d36455ec5ccc7fe75e20584c076d1ab9

sudo service nginx restart
