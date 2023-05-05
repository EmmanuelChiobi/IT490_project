#!/bin/bash

# MySQL database credentials
db_user="jkz3"
db_password="12345"
db_name="Users"

# Get the list of usernames and passwords from the customers table
user_list=$(mysql -u $db_user -p $db_password $db_name -e "SELECT username, password FROM users;")

# Loop through each user and hash their password
while read -r username password; do
    hashed_password=$(echo -n $password | openssl sha256 | awk '{print $2}')
    mysql -u $db_user -p $db_password $db_name -e "UPDATE users SET password='$hashed_password' WHERE username='$username';"
    echo "Hashed password for user $username"
done <<< "$user_list"

echo "Password hashing complete."

