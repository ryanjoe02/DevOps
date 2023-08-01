#!/bin/bash

# install nginx
echo "install nginx"
sudo apt install -y nginx

# nginx 설정 파일 생성 
echo "create nginx config"

# getopts
SERVER_IP=
manual="Usage: $0 [-i server_ip]"

while getopts "i:" option; do
    case $option in
        i)
            SERVER_IP=$OPTARG
            ;;
        *)
            echo $manula
            exit 1
            ;;
    esac
done

# curl ifconfig.me -> get IP address
if [ -z $SERVER_IP ]; then
    SERVER_IP=$(curl -s ifconfig.me)
fi

sudo sh -c 'cat > /etc/nginx/sites-available/django <<EOF
server {
    listen 80;
    server_name '"$SERVER_IP"';

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
    }
}
EOF'

# Check if the symbolic link already exists and delete

TARGET_CONF=/etc/nginx/sites-enabled/django

if [ -L $TARGET_CONF ]; then
    echo "Removing existing symbolic link..."
    sudo rm $TARGET_CONF
fi

# symbolic link 
echo "create symbolic link"
sudo ln -s /etc/nginx/sites-available/django /etc/nginx/sites-enabled/django

# nginx restart
echo "restart nginx"
sudo systemctl restart nginx


