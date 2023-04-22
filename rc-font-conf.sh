#!/bin/bash
#NVim, Bash & Vim config files, fonts and plugins
#Recomendable descargar este script en el directorio de descargas y ejecutarlo desde ahí:

echo "Se recomienda descargar y ejecutar este script en otro sitio que no sea ~ / HOME. Se van a descargar y mover los archivos de configuración a sus respectivos lugares: ¿Quieres continuar? (S/N)"

read -r answer
sleep 2

if [ "$answer" = "S" ] || [ "$answer" = "s" ]; then

#1º- .*rc files for NVim, Vim & Bash | Mis archivos .rc para NVim, Vim y Bash

wget https://raw.githubusercontent.com/mrs4ndman/setup/master/.vimrc; mv -f .vimrc ~/.vimrc &&
wget https://raw.githubusercontent.com/mrs4ndman/setup/master/.bashrc; mv -f .bashrc ~/.bashrc &&

#2º- Vimplug - Plugins VIM & NVIM

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#3º- Fuentes | Fonts

wget https://github.com/ryanoasis/nerd-fonts/blob/ad7cf8faddf38ea56db88be251c834419a424981/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf && sudo mv Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf /usr/share/fonts/

    sleep 1
    echo "Ya se han descargado e instalado todos los archivos de configuración"

else
    
    echo "Abortando..."
    
    exit 0

fi
