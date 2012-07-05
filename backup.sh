#!/bin/sh
FILES=".config/xfce4
.config/openbox
.config/gtk-2.0
.config/Terminal
.config/terminator
.config/tint2
.config/Thunar
.config/user-dirs.dirs
.conky
.conkyrc
.fonts.conf
.bash_aliases
.bashrc
.zshrc
.gitconfig
lshw.txt"

#copy to backup dir

for file in $FILES
do
	#echo $file;
	cp -ru --parents ~/$file ~/dotfiles
done

#commit

NOW=$(date +"%Y-%m-%d")
cd ~/dotfiles
git add -A
git commit -m "$NOW laptop backup"
git push -u origin crunchbang


exit 0
