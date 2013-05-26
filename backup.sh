#!/bin/sh
FILES=".config/xfce4
.config/openbox
.config/crunchbang
.config/gtk-3.0
.config/tint2
.config/dmenu
.config/terminator
.config/Thunar
.config/darktable/darktablerc
.config/transmission
.config/user-dirs.dirs
.conky
.conkyrc
.fonts.conf
.fonts
.icons
.bash_aliases
.bashrc
.zshrc
.gitconfig
.git-completion.sh
.pep8
lshw.txt
/etc/apt/sources.list"

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
git push -u origin crunchbang-waldorf


exit 0
