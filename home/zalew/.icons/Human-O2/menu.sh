#! /bin/bash

    ## This program is free software; you can redistribute it and/or modify
    ## it under the terms of the GNU General Public License as published by
    ## the Free Software Foundation; either version 2 of the License, or
    ## (at your option) any later version.
    ##
    ## This program is distributed in the hope that it will be useful,
    ## but WITHOUT ANY WARRANTY; without even the implied warranty of
    ## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    ## GNU General Public License for more details.

    ## You should have received a copy of the GNU General Public License
    ## along with this program; if not, write to the Free Software
    ## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
    ## MA 02110-1301, USA.
    
## remove icon.caches... why? dont know ;)
rm -f icon-theme.cache

## youre welcome
echo "Welcome ;) Please chose on of the numbers..."
echo "It\`s like \"3\" - really simple."
echo "Just press [Return] to chose the default."
echo ""   
     
function menu {      
    
    echo -e "Choose the \"${1}\"."
    
    ## create menu
    lenght=${#array[@]}
    for i in `seq 0 ${lenght}`; do
        let number=$i+1
        Logo=$(awk -v v="${array[${i}]}" BEGIN'{print toupper(substr(v,1,1)) tolower(substr(v,2))}')
        if [ ${i} -lt ${lenght} ]; then
            echo -n "(${number}) ${Logo} "
        fi
        if [ ${i} -eq 0 ]; then
             echo "(default)"
        else
            echo ""
        fi

    done

    ## check whether $REPLY is ok and start script
    while true; do
        read
        if [[ $REPLY =  "" ]]; then
            bash change-type.sh ${array[0]}
            break
        elif [[ $REPLY = *[^0-9]* ]]; then 
            echo "Please type a number."
            echo -e "Try again.\n"
        elif ( [ $REPLY -gt ${lenght} ] || [ $REPLY -eq 0 ] ); then
            echo -e "This \"${1}\" does not exist."
            echo -e "Try again.\n"
        else
            bash change-type.sh ${array[$REPLY-1]}
            break
        fi
    done
     
    echo -e "\n\nIf there are not any unreadable lines, the \"${1}\" has been changed successfull.\n\n"
   
    
}

## color of folders
array=("humanfolder" "kubuntufolder" "orangefolder" "manillafolder")
menu "color of folders"

## navi
array=("new-navi" "old-navi")
menu "style of navi-buttons"

## navi
array=("new-loupe" "old-loupe" "mix-loupe")
menu "style of loupes"

## logo
array=("ubuntu" "ubuntu-original" "xubuntu" "ubuntustudio" "gnome-orange" "gnome-circle" \
       "gnome-acquamarine" "gnome-black" "gnome-blood" "gnome-blue" \
       "gnome-brown" "gnome-green" "gnome-pink" "gnome-red" "gnome-skyblue" \
       "gnome-violet" "gnome-white" "kde" "kubuntu")
menu "logo"

## openoffice
array=("old-openoffice" "new-openoffice")
menu "openoffice-icons"

## wlan
array=("router-wlan" "blocks-wlan" "systemown-wlan")
menu "wlan-icons"

## trash
array=("orange-trash" "human-trash" "meliae-trash" "mac-trash")
menu "trash-icons"

exit 0

