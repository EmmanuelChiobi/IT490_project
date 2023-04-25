# IT490_project
Continuation of IT490 project

Backend Configuration

FireWall Setup:
Follow the commands below to initiate and configure the firewall
Source: https://www.cyberciti.biz/faq/ubuntu-22-04-lts-set-up-ufw-firewall-in-5-minutes/

1. sudo ufw default allow outgoing
   sudo ufw default deny incoming
   
2. sudo ufw allow ssh

3. sudo ufw enable
   sudo systemctl status ufw.service
   
4. sudo ufw allow 80/tcp comment 'Allow Apache HTTP'
   sudo ufw allow 443/tcp comment 'Allow Nginx HTTPS'
   sudo ufw allow 5672/tcp comment 'Allow rabbitmq'
   sudo ufw allow 15672/tcp comment 'Allow rabbitmq-management'
   
5. sudo ufw allow from 0.0.0.0 (insert IP address)

6. sudo ufw deny from 0.0.0.0 (insert IP address)
