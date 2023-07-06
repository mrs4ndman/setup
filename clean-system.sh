#!/usr/bin/env bash
echo "This installs through apt all the packages + tries to install from git the other ones"
echo "You now have 3 seconds to cancel in order to review the script | CLEAN SYSTEM ONLY!!"
sleep 4 &&
sudo apt install alacritty \
	apt-transport-https \
        apt-utils \
        bash-completion \
        bashtop \
        bridge-utils \
        bsdutils \
        build-essential \
        cmake \
        cmatrix \
        command-not-found \
        composer \
        coreutils \
        cowsay \
        curl \
        diffutils \
        default-jdk \
        docker \
        docker.io \
        discord \
        entr \
        exa \
        fd-find \
        ffmpeg \
        file \
        findutils \
        fish \
        g++ \
        gawk \
        gcc \
        git \
        gnome-sudoku \
        gnome-tweaks \
        gnupg \
        golang-go \
        golang \
        gparted \
        gpg \
        gnupg \
        gufw \
        gzip \
        hollywood \
        htop \
        keepassxc \
        inxi \
        julia \
        libreoffice \
        libzstd1 \
        lm-sensors \
        locate \
        lolcat \
        lshw \
        luarocks \
        meson \
        ncat \
        neofetch \
        net-tools \
        ninja-build \
        nyancat \
        pandoc \
        perl \
        pong2 \
        psensor \
        procps \
        python3.11 \
        ranger \
        rar \
        refind \
        remmina \
        ripgrep \
        ruby-full \
        ruby \
        sensible-utils \
        shellcheck \
        smartmontools \
        smplayer \
        software-properties-common \
        software-properties-gtk \
        solaar \
        speedtest-cli \
        steam \
        stow \
        sudoku \
        syncthing \
        tar \
        thefuck \
        tig \
        tmux \
        tilix \
        tldr \
        toilet \
        toilet-fonts \
        trash-cli \
        tre-command \
        tree \
        tzdata \
        vifm \
        vim \
        virt-manager \
        virt-viewer \
        wget \
        xxd \
        yt-dlp \
        zip \
        zsh &&
mkdir deb-install &&
cd deb-install &&
# BAT Install
wget https://github.com/sharkdp/bat/releases/download/v0.23.0/bat-musl_0.23.0_amd64.deb &&
sudo dpkg -i ./bat-musl_0.23.0_amd64.deb &&
# BTOP Install
wget https://github.com/aristocratos/btop/releases/download/v1.2.13/btop-x86_64-linux-musl.tbz &&
tar xf ./btop-x86_64-linux-musl.tbz &&
./btop/install.sh &&
# CAVA Install steps
echo "Can install cava from GitHub, this installs from apt" &&
rm -rf btop/ &&
sleep 4 &&
sudo apt install cava && # (can do it from git for a newer wanted version)
# kitty 
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin &&
# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/ &&
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/ &&
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/ &&
# Update the paths to the kitty and its icon in the kitty.desktop file(s)
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop &&
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop &&
# Neovim Install
git clone https://github.com/neovim/neovim.git &&
cd neovim &&
mkdir ~/Downloads/deb-packages &&
make CMAKE_BUILD_TYPE=RelWithDebInfo &&
cd build/ && cpack -G DEB && sudo dpkg -i nvim-linux64.deb && mv nvim-linux64.deb ~/Downloads/deb-packages/ &&
# Spotify Install
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg &&
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt-get update && sudo apt-get install spotify-client &&
# VSCodium install
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg &&
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list &&
    sudo apt update && sudo apt install codium &&
# VS Code install instructions
echo "Bruh, go to the code.visualstudio.com website and get the .deb package" &&
sleep 2 &&
echo "Also install the powershell repo and the flameshot flatpak" &&
sleep 2 &&
echo "Check the PopShop for some flatpaks like the Obsidian one and others"
echo "DONE!"
