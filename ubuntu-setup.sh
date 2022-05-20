#/bin/sh
# My Ubuntu setup script

# Basic apps
sudo apt install git -y
sudo snap install slack --classic
sudo snap install spotify
sudo snap install phpstorm --classic
sudo snap install code --classic
sudo snap install evernote-web-client
sudo snap install notion-snap

# Install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
#sudo systemctl status docker
wget https://files.lando.dev/installer/lando-x64-stable.deb
sudo dpkg -i lando-x64-stable.deb
sudo rm -rf lando-x64-stable.deb
sudo usermod -a -G docker $USER $ exit

# Install Google Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
rm -rf google-chrome*.deb

# Albert
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb https://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_22.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update
sudo apt install albert -y

# Install NVIDIA driver.
sudo apt install gcc make
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/510.68.02/NVIDIA-Linux-x86_64-510.68.02.run
sudo bash NVIDIA-Linux-x86_64-510.68.02.run 

## Remove docker
# sudo apt-get purge -y docker docker.io
# sudo apt-get autoremove -y --purge docker docker.io
# sudo rm -rf /var/run/docker.sock

## Quick re-install docker (data loss)
# sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
# sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce  
# sudo rm -rf /var/lib/docker/volumes && sudo rm -rf /var/lib/docker/trust && sudo rm -rf /var/lib/docker/tmp && sudo rm -rf /var/lib/docker/swarm && sudo rm -rf /var/lib/docker/runtimes && sudo rm -rf /var/lib/docker/plugins && sudo rm -rf /var/lib/docker/network && sudo rm -rf /var/lib/docker/image && sudo rm -rf /var/lib/docker/containers && sudo rm -rf /var/lib/docker/buildkit
# sudo apt install docker-ce && sudo systemctl status docker
# wget https://files.lando.dev/installer/lando-x64-stable.deb && sudo dpkg -i lando-x64-stable.deb && sudo rm -rf lando-x64-stable.deb
