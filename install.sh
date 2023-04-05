sudo apt update && sudo apt upgrade -y
sudo dpkg --add-architecture i386

sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository ppa:slimbook/slimbook
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo add-apt-repository ppa:obsproject/obs-studio
sudo add-apt-repository ppa:flexiondotorg/nvtop
sudo add-apt-repository ppa:kubuntu-ppa/backports

sudo apt update && sudo apt full-upgrade


curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $USER

snap remove firefox snap-store

snap install spotify shotcut --classic 

sudo apt-get install kubuntu-desktop --no-install-recommends

sudo apt install gnome-tweaks gnome-software gnome-software-common gnome-software-plugin-flatpak gnome-software-plugin-snap ubuntu-restricted-extras -y
sudo apt install vlc gimp telegram-desktop steam curl gdebi stacer qbittorrent synaptic xdg-desktop-portal-gnome ca-certificates curl gnupg lsb-release -y
sudo apt install curl git dirmngr gpg curl gawk linux-headers-$(uname -r) build-essential libssl-dev libreadline-dev zlib1g-dev libcurl4-openssl-dev uuid-dev icu-devtools -y
sudo apt install papirus-icon-theme gir1.2-gtop-2.0 gir1.2-gudev-1.0 slimbookbattery nvidia-driver-525 obs-studio -y
sudo apt install --install-recommends winehq-stable -y
sudo apt install nemo gnome-screenshot gdal-bin redis gnome-tweaks gnome-shell-extension-manager gnome-shell-extensions intel-gpu-tools nvtop -y
sudo apt-get install spotify-client

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add python
asdf plugin-add postgres
asdf python install latest
asdf python global latest
asdf nodejs install latest
asdf nodejs global latest
asdf postgres install latest
asdf postgres global latest
asdf python install 3.7.15
asdf python install 3.9.16
asdf postgres install 9.4.26

sudo apt remove nautlius
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
xdg-mime query default inode/directory

sudo apt update && sudo apt upgrade -y
