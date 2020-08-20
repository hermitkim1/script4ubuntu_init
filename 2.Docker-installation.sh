# Install Docker engine
# update
echo == update
echo ======================================
echo ======================================
sleep 2
sudo apt update -y

# dist-upgrade
echo == dist-upgrade
echo ======================================
echo ======================================
sleep 2
sudo apt dist-upgrade -y

echo == install Docker engine
echo ======================================
echo ======================================
sleep 2
# install docker
wget -qO- get.docker.com | sh
# installation checking
sudo docker info
