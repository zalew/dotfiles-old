#!/bin/sh
FILES=".config/xfce4
.config/Terminal
.config/Thunar
.config/darktable/darktablerc
.config/user-dirs.dirs
.config/autostart/conky.desktop
.conky
.conkyrc
.fonts.conf
.fonts
.bash_aliases
.bashrc
.zshrc
.gitconfig
.git-completion.sh
.pep8
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
git commit -m "$NOW backup"
git push -u origin master


exit 0
