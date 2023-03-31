#!/bin/bash

#Recomendable descargar este script en el directorio de descargas y ejecutarlo desde ahí:

echo "Se recomienda descargar y ejecutar este script en otro sitio que no sea ~ / HOME. Se van a descargar y mover los archivos de configuración a sus respectivos lugares: ¿Quieres continuar? (S/N)"

read -r answer
sleep 2

if [ "$answer" = "S" ] || [ "$answer" = "s" ]; then

#1º- .*rc | Mis archivos .rc

wget https://raw.githubusercontent.com/mrs4ndman/setup/main/.vimrc; mv -f .vimrc ~/.vimrc &&
wget https://raw.githubusercontent.com/mrs4ndman/setup/main/.bashrc; mv -f .bashrc ~/.bashrc &&

#2º- Vimplug - Plugins VIM

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#3º- Fuentes / Fonts: Droid Sans Mono Nerdfont + Jetbrains Mono Standard

wget https://github.com/ryanoasis/nerd-fonts/blob/ad7cf8faddf38ea56db88be251c834419a424981/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf && sudo mv Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf /usr/share/fonts/ && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)" && wget https://github.com/ryanoasis/nerd-fonts/blob/dfd186c2a43fa45409ba2a3d5d5ab831fba6fc01/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Nerd%20Font%20Complete%20Regular.ttf && sudo mv JetBrains\ Mono\ Nerd\ Font\ Complete\ Regular.ttf /usr/share/fonts/truetype/


    sleep 1
    echo "Ya se han descargado e instalado todos los archivos de configuración"

else
    
    echo "Abortando..."
    
    exit 0

fi

