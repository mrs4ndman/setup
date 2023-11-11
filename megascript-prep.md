## Special ones that apt can manage:
bat-musl (git)
btop (git)
cava (git)
tmux (git or apt)
neovim (git) + pre-made configs

## Neovim installation
```bash
# Build prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl

# Creation of install directory
mkdir -p /home/mrsandman/git-clone-zone
git clone https://github.com/neovim/neovim /home/mrsandman/git-clone-zone/neovim

cd /home/mrsandman/git-clone-zone/neovim/

make CMAKE_BUILD_TYPE=RelWithDebInfo

cd build/ && cpack -G DEB

sudo dpkg -i nvim-linux64.deb
```

- Neovim distro switcher setup
```bash
rm -rf ~/.config/kickstart-nvim/
rm -rf ~/.config/NormalNVim/
rm -rf ~/.config/AstroNvim/
rm -rf ~/.config/LazyVim/
rm -rf ~/.config/DuskNvim/
rm -rf ~/.config/SmallNvim/
rm -rf ~/.config/MonstahNvim/

git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/kickstart-nvim
git clone git@github.com:NormalNVim/NormalNVim.git ~/.config/NormalNVim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/AstroNvim
git clone https://github.com/LazyVim/starter ~/.config/LazyVim
git clone https://github.com/imbacraft/dusk.nvim ~/.config/DuskNvim
git clone git@github.com:mrs4ndman/SmallNvim ~/.config/SmallNvim
git clone git@github.com:mrs4ndman/MonstahNvim ~/.config/MonstahNvim/
```
gotty and simplehttp (requires go to be installed)
```bash
go install github.com/snwfdhmp/simplehttp@latest
go install github.com/ghthor/gotty/v2@latest
```
spotify-client (repo)
code (repo)
codium (repo)
powershell (repo)
flameshot (flatpak)
mission center (flatpak)
color picker (flatpak)
peazip (flatpak)
bleachbit (flatpak)
npm utils and packages:
```bash
sudo npm install -g @compodoc/live-server
sudo npm install -g wipeclean
sudo npm install -g neovim
```

# Cargo installed:
```bash
sudo apt install libxml2-dev
sudo apt install pkg-config libasound2-dev libssl-dev cmake libfreetype6-dev libexpat1-dev libxcb-composite0-dev libharfbuzz-dev
cargo install git-delta onefetch stylua tree-sitter wiki-tui tokei 
cargo install --git https://github.com/loichyan/nerdfix.git
```

```bash
sudo apt install \
adduser \
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
compton \
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
feh \
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
gparted \
gpg \
gnupg \
gufw \
gzip \
hollywood \
htop \
keepassxc \
inxi \
i3 \
julia \
kitty \
libreoffice \
libaa-bin \
libgnutls28-dev \
libzstd1 \
lm-sensors \
locate \
lolcat \
lshw \
light \
luarocks \
meson \
ncat \
ncdu \
neofetch \
net-tools \
ninja-build \
nyancat \
okular \
pandoc \
pandoc-citeproc \
pdflatex \
texlive-latex-base \
texlive-fonts-recommended \
texlive-fonts-extra \
texlive-latex-extra \
texlive-pictures \
perl \
pong2 \
psensor \
procps \
python3.11 \
pulsemixer \
playerctl \
ranger \
rig \
rar \
refind \
remmina \
ripgrep \
ruby-full \
ruby \
screenkey \
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
sysvbanner \
sudoku \
syncthing \
tar \
thefuck \
tig \
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
virtualbox \
wget \
xxd \
yt-dlp \
zathura \
zip \
zsh 
```
