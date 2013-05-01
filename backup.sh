#!/bin/sh
FILES=".local/share/gnome-shell/extensions
.config/Terminal
.config/darktable/darktablerc
.config/user-dirs.dirs
.config/transmission/settings.json
.icons
.themes
.bash_aliases
.bashrc
.zshrc
.gitconfig
.git-completion.sh
.pep8
lshw.txt
/etc/apt/sources.list
/etc/apt/sources.list.d/"

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
git push -u origin ubuntu-gnome-laptop


exit 0
