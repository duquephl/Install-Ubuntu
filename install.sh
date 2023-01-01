sudo apt update && sudo apt upgrade
sudo apt install gnome-tweaks
sudo apt install gnome-software gnome-software-common gnome-software-plugin-flatpak gnome-software-plugin-snap
sudo apt install ubuntu-restricted-extras
sudo apt install vlc
sudo apt install gimp
sudo apt install telegram-desktop
sudo apt install steam
sudo apt install curl
sudo apt install gdebi
sudo apt install stacer
sudo apt install nemo-megasync
sudo apt install qbittorrent
sudo apt install synaptic
snap install spotify
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER
sudo apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
sudo apt-get install dirmngr gpg curl gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
sudo apt-get install linux-headers-$(uname -r) build-essential libssl-dev libreadline-dev zlib1g-dev libcurl4-openssl-dev uuid-dev icu-devtools
asdf plugin-add postgres
sudo apt install cinnamon --no-install-recommends
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
sudo apt install gir1.2-gtop-2.0 gir1.2-gudev-1.0
sudo add-apt-repository ppa:slimbook/slimbook
sudo apt update && sudo apt install slimbookbattery
snap remove firefox snap-store
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install nvidia-driver-525
sudo apt-get update
sudo apt-get upgrade
