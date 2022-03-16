# Install Docker engine
# update
echo == update
echo ======================================
echo ======================================
sleep 2
sudo apt update -y

echo == install Docker engine
echo ======================================
echo ======================================
sleep 2
# install docker
wget -qO- get.docker.com | sh
# installation checking
sudo docker info
