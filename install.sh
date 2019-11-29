#!/bin/sh

remove() {
        if [ -f $1 ]; then
		echo "Suppression de $1"
                rm $1
        fi
}

link() {
	absolute_path=$PWD/$1
	remove $2
	if [ -f $1 ]; then
		echo "Creating symbolique link : $absolute_path => $2"
        	ln -s $absolute_path $2 
        fi
}
mkdir -p ~/bin ~/.config/i3 ~/.config/dunst ~/.config/polybar ~/.zfunctions ~/.config/termite/ ~/Images/icones ~/Images/wallpapers
link bin/lock-screen.sh ~/bin/lock-screen.sh
link bin/polybar.sh ~/bin/polybar.sh
link i3/config ~/.config/i3/config
link termite/config ~/.config/termite/config
link vimrc ~/.vimrc
link zshrc ~/.zshrc
link zfunctions/venvs ~/.zfunctions/venvs
link dunstrc ~/.config/dunst/dunstrc
link images/icones/cadena.png ~/Images/icones/cadena.png
link polybar/config ~/.config/polybar/config
link compton.conf ~/.config/compton.conf
link images/wallpapers/kevin.png ~/Images/wallpapers/kevin.png
