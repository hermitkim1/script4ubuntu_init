#!/bin/bash
#
# This is a script to setup Edge Cloud
#
# update
echo == update
echo ======================================
echo ======================================
sleep 2
sudo apt update

# dist-upgrade
echo == dist-upgrade
echo ======================================
echo ======================================
sleep 2
sudo apt dist-upgrade -y

# install vim
echo == install vim
echo ======================================
echo ======================================
sleep 2
sudo apt install vim -y

# install ufw
echo == install ufw
echo ======================================
echo ======================================
sleep 2
sudo apt install ufw -y

sudo ufw enable
sudo ufw status
sudo ufw allow ssh

# install fail2ban
echo == install fail2ban
echo ======================================
echo ======================================
sleep 2
sudo apt install fail2ban -y

# fail2ban setting
echo == fail2ban setting
echo "[ssh]" >> /etc/fail2ban/jail.local
echo "" >> /etc/fail2ban/jail.local
echo "enabled = true" >> /etc/fail2ban/jail.local
echo "port = ssh" >> /etc/fail2ban/jail.local
echo "filter = sshd" >> /etc/fail2ban/jail.local
echo "logpath = /var/log/auth.log" >> /etc/fail2ban/jail.local
echo "bantime = 900" >> /etc/fail2ban/jail.local
echo "banaction = iptables-allports" >> /etc/fail2ban/jail.local
echo "findtime = 900" >> /etc/fail2ban/jail.local
echo "maxretry = 3" >> /etc/fail2ban/jail.local

# restart fail2ban service
echo == restart fail2ban service
sudo systemctl restart fail2ban
