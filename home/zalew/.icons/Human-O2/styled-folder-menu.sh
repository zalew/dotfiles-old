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
            ./change-type.sh ${array[0]}
            break
        elif [[ $REPLY = *[^0-9]* ]]; then 
            echo "Please type a number."
            echo -e "Try again.\n"
        elif ( [ $REPLY -gt ${lenght} ] || [ $REPLY -eq 0 ] ); then
            echo -e "This \"${1}\" does not exist."
            echo -e "Try again.\n"
        else
            ./change-type.sh ${array[$REPLY-1]}
            break
        fi
    done
     
    echo -e "\n\nIf there are not any unreadable lines, the \"${1}\" has been changed successfull.\n\n"
   
    
}

## home folders
t=$(which nautilus)
if [ $? == 0 ]; then
    echo "Please read before following ..."
    echo "** only English, Spanish and German at moment ;) **"
    echo "1) do-nothing: Any changes in the folder-styles - everything stay with default parameters."
    echo "2) styled-folders: video-, music-, pictures-, documents- and download-folders get a new aspect."
    echo "3) redo: Delete all changes with the folder-styles and Emblems. Your home-directory will return to default. (First boot after install)."
    echo ""
    array=("do-nothing" "styled-folders" "redo")
    menu "style of home folders"
fi

exit 0

