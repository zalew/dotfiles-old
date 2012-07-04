alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -AF'
alias lh='ls -lah'
alias l='ls -CF'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias back='cd $OLDPWD'
alias man="man -a"
alias unmount="umount"
alias cdopen="eject"
alias cdclose="eject -t"
alias ip="ifconfig"
alias ping='ping -c 10'

alias cp="cp -iv"
alias cpr="cp -riv"
alias rm="rm -i"
alias mv="mv -iv"
alias grep="grep -i"


# Make basic commands interactive, and verbose
alias cp="cp -iv"      # interactive
alias rm="rm -i"      # interactive
alias mv="mv -iv"       # interactive, verbose
alias grep="grep -i"  # ignore case

# Easy to use aliases for frequently used commands
alias x="exit"

# Clear the screen and list file
alias cls='clear;ls'

#django shortcuts

DJANGO_PROJECTS_DIR='/home/zalew/webprojects'

djgo(){ cd $DJANGO_PROJECTS_DIR/$1; }
djrun(){
	djgo $1;
	if [ $2 > 0 ];
	then 
		local port=80$2;
	else
		local port=8080;
	fi;
	echo -e '\e[30;43m running '$1' on port '$port' \e[0m';	
	./manage.py runserver $port;
}
djrunp(){
	djgo $1;
	if [ $2 > 0 ];
	then 
		local port=80$2;
	else
		local port=8080;
	fi;
	echo -e '\e[30;43m running '$1' on port '$port' \e[0m';
	source /home/zalew/envs/dj125/bin/activate;
	./manage.py runserver_plus $port;
}
djtest(){
	djgo $1;
	echo -e '\e[30;43m testing '$1'.'$2' \e[0m';
	./manage.py test $2;
}
djsync(){
	djgo $1;
	echo -e '\e[30;43m syncdb '$1' \e[0m';
	./manage.py syncdb;
}

alias dj="djrunp"

