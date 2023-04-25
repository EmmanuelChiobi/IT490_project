# IT490_project
Systemd Configuration

Create apache2.service and mysql.service files in usr/lib/systemd/system
For rabbitmq-server.service follow the steps commented in the file (it already exists, you just have to update the file)

After creating and updating files run:
sudo systemctl daemon-reload

To have your .service files start automatically when you log in to your machine, you can use systemd user services.

1. Create a new directory for your user services by running the following command:
mkdir -p ~/.config/systemd/user/

2. Copy your .service file(s) to the directory you just created:
cp apache2.service ~/.config/systemd/user/

3. Reload systemd to pick up the new user services directory:
systemctl --user daemon-reload

4. Enable the service(s) you want to start automatically on login:
systemctl --user enable apache2.service

5. Finally, start the service(s) using the following command:
systemctl --user start apache2.service
Your .service file(s) will now start automatically when you log in to your machine.

Repeat the steps above for mysql.service and rabbitmq-server.service 
systemd is up and running functionally on my VM. All the services start when I open my VM 
