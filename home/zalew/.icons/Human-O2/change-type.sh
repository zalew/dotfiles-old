#!/bin/bash

case $@ in

	systemown-wlan)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/apps && \
				rm -f gnome-netstatus-0-24.png && \
				rm -f gnome-netstatus-25-49.png && \
				rm -f gnome-netstatus-50-74.png && \
				rm -f gnome-netstatus-75-100.png && \
				rm -f mm-device-wired.png && \
				rm -f nm-signal-00.png && \
				rm -f nm-signal-25.png && \
				rm -f nm-signal-50.png && \
				rm -f nm-signal-75.png && \
				rm -f nm-signal-100.png && \
				cd ../../; \
		done
	;;

	router-wlan)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/apps && \
				ln -f router-gnome-netstatus-0-24.png gnome-netstatus-0-24.png && \
				ln -f router-gnome-netstatus-25-49.png gnome-netstatus-25-49.png && \
				ln -f router-gnome-netstatus-50-74.png gnome-netstatus-50-74.png && \
				ln -f router-gnome-netstatus-75-100.png gnome-netstatus-75-100.png && \
				ln -f router-mm-device-wired.png mm-device-wired.png && \
				ln -f router-nm-signal-00.png nm-signal-00.png && \
				ln -f router-gnome-netstatus-0-24.png nm-signal-25.png && \
				ln -f router-gnome-netstatus-25-49.png nm-signal-50.png && \
				ln -f router-gnome-netstatus-50-74.png nm-signal-75.png && \
				ln -f router-gnome-netstatus-75-100.png nm-signal-100.png && \
				cd ../../; \
		done
	;;

	blocks-wlan)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/apps && \
				ln -f blocks-gnome-netstatus-0-24.png gnome-netstatus-0-24.png && \
				ln -f blocks-gnome-netstatus-25-49.png gnome-netstatus-25-49.png && \
				ln -f blocks-gnome-netstatus-50-74.png gnome-netstatus-50-74.png && \
				ln -f blocks-gnome-netstatus-75-100.png gnome-netstatus-75-100.png && \
				ln -f blocks-mm-device-wired.png mm-device-wired.png && \
				ln -f blocks-nm-signal-00.png nm-signal-00.png && \
				ln -f blocks-gnome-netstatus-0-24.png nm-signal-25.png && \
				ln -f blocks-gnome-netstatus-25-49.png nm-signal-50.png && \
				ln -f blocks-gnome-netstatus-50-74.png nm-signal-75.png && \
				ln -f blocks-gnome-netstatus-75-100.png nm-signal-100.png && \
				cd ../../; \
		done
	;;

	new-openoffice)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/apps && \
				ln -sf new-ooo-template.png ooo-template.png && \
				ln -sf new-openoffice.png openoffice.png && \
				ln -sf new-openofficeorg-base.png openofficeorg-base.png && \
				ln -sf new-openofficeorg-calc.png openofficeorg-calc.png && \
				ln -sf new-openofficeorg-draw.png openofficeorg-draw.png && \
				ln -sf new-openofficeorg-impress.png openofficeorg-impress.png && \
				ln -sf new-openofficeorg-math.png openofficeorg-math.png && \
				ln -sf new-openofficeorg-writer.png openofficeorg-writer.png && \
				cd ../../; \
		done
	;;

	old-openoffice)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/apps && \
				ln -sf old-ooo-template.png ooo-template.png && \
				ln -sf old-openoffice.png openoffice.png && \
				ln -sf old-openofficeorg-base.png openofficeorg-base.png && \
				ln -sf old-openofficeorg-calc.png openofficeorg-calc.png && \
				ln -sf old-openofficeorg-draw.png openofficeorg-draw.png && \
				ln -sf old-openofficeorg-impress.png openofficeorg-impress.png && \
				ln -sf old-openofficeorg-math.png openofficeorg-math.png && \
				ln -sf old-openofficeorg-writer.png openofficeorg-writer.png && \
				cd ../../; \
		done
	;;
	
	manillafolder)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf manilla-folder.png folder.png && \
				ln -sf manilla-folder-bookmarks.png folder-bookmarks.png && \
				ln -sf manilla-folder-burn.png folder-burn.png && \
				ln -sf manilla-folder-cd.png folder-cd.png && \
				ln -sf manilla-folder-development.png folder-development.png && \
				ln -sf manilla-folder-deviantART.png folder-deviantART.png && \
				ln -sf manilla-folder-downloads.png folder-downloads.png && \
				ln -sf manilla-folder-locked.png folder-locked.png && \
				ln -sf manilla-folder-image.png folder-image.png && \
				ln -sf manilla-folder-important.png folder-important.png && \
				ln -sf manilla-folder-open.png folder-open.png && \
				ln -sf manilla-folder-print.png folder-print.png && \
				ln -sf manilla-folder-games.png folder-games.png && \
				ln -sf manilla-folder-public.png folder-public.png && \
				ln -sf manilla-folder-remote.png folder-remote.png && \
				ln -sf manilla-folder-saved-search.png folder-saved-search.png && \
				ln -sf manilla-folder-sound.png folder-sound.png && \
				ln -sf manilla-folder-tar.png folder-tar.png && \
				ln -sf manilla-folder-txt.png folder-txt.png && \
				ln -sf manilla-folder-video.png folder-video.png && \
				ln -sf manilla-folder-mail.png folder-mail.png && \
				ln -sf manilla-user-desktop.png user-desktop.png && \
				ln -sf manilla-user-home.png user-home.png && \
				cd ../actions && \
				ln -sf manilla-add-folder-to-archive.png add-folder-to-archive.png && \
				ln -sf manilla-address-book-new.png address-book-new.png && \
				ln -sf manilla-document-open.png document-open.png && \
				ln -sf manilla-folder-new.png folder-new.png && \
				cd ../status && \
				ln -sf manilla-folder-drag-accept.png folder-drag-accept.png && \
				ln -sf manilla-folder_open.png folder_open.png && \
				ln -sf manilla-folder-open.png folder-open.png && \
				ln -sf manilla-folder-visiting.png folder-visiting.png && \
				cd ../../;\
		done
	;;
	
	orangefolder)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf orange-folder.png folder.png && \
				ln -sf orange-folder-bookmarks.png folder-bookmarks.png && \
				ln -sf orange-folder-burn.png folder-burn.png && \
				ln -sf orange-folder-cd.png folder-cd.png && \
				ln -sf orange-folder-development.png folder-development.png && \
				ln -sf orange-folder-deviantART.png folder-deviantART.png && \
				ln -sf orange-folder-downloads.png folder-downloads.png && \
				ln -sf orange-folder-locked.png folder-locked.png && \
				ln -sf orange-folder-image.png folder-image.png && \
				ln -sf orange-folder-important.png folder-important.png && \
				ln -sf orange-folder-open.png folder-open.png && \
				ln -sf orange-folder-print.png folder-print.png && \
				ln -sf orange-folder-public.png folder-public.png && \
				ln -sf orange-folder-remote.png folder-remote.png && \
				ln -sf orange-folder-saved-search.png folder-saved-search.png && \
				ln -sf orange-folder-sound.png folder-sound.png && \
				ln -sf orange-folder-tar.png folder-tar.png && \
				ln -sf orange-folder-games.png folder-games.png && \
				ln -sf orange-folder-txt.png folder-txt.png && \
				ln -sf orange-folder-video.png folder-video.png && \
				ln -sf orange-folder-mail.png folder-mail.png && \
				ln -sf orange-user-desktop.png user-desktop.png && \
				ln -sf orange-user-home.png user-home.png && \
				cd ../actions && \
				ln -sf orange-add-folder-to-archive.png add-folder-to-archive.png && \
				ln -sf orange-address-book-new.png address-book-new.png && \
				ln -sf orange-document-open.png document-open.png && \
				ln -sf orange-folder-new.png folder-new.png && \
				cd ../status && \
				ln -sf orange-folder-drag-accept.png folder-drag-accept.png && \
				ln -sf orange-folder_open.png folder_open.png && \
				ln -sf orange-folder-open.png folder-open.png && \
				ln -sf orange-folder-visiting.png folder-visiting.png && \
				cd ../../;\
		done
	;;

	humanfolder)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf humanfolder.png folder.png && \
				ln -sf human-folder-bookmarks.png folder-bookmarks.png && \
				ln -sf human-folder-burn.png folder-burn.png && \
				ln -sf human-folder-cd.png folder-cd.png && \
				ln -sf human-folder-development.png folder-development.png && \
				ln -sf human-folder-deviantART.png folder-deviantART.png && \
				ln -sf human-folder-downloads.png folder-downloads.png && \
				ln -sf human-folder-locked.png folder-locked.png && \
				ln -sf human-folder-image.png folder-image.png && \
				ln -sf human-folder-important.png folder-important.png && \
				ln -sf human-folder-open.png folder-open.png && \
				ln -sf human-folder-print.png folder-print.png && \
				ln -sf human-folder-public.png folder-public.png && \
				ln -sf human-folder-remote.png folder-remote.png && \
				ln -sf human-folder-saved-search.png folder-saved-search.png && \
				ln -sf human-folder-sound.png folder-sound.png && \
				ln -sf human-folder-tar.png folder-tar.png && \
				ln -sf human-folder-games.png folder-games.png && \
				ln -sf human-folder-txt.png folder-txt.png && \
				ln -sf human-folder-video.png folder-video.png && \
				ln -sf human-folder-mail.png folder-mail.png && \
				ln -sf human-folder-email.png folder-email.png && \
				ln -sf human-folder-ubuntu.png folder-ubuntu.png && \
				ln -sf human-user-desktop.png user-desktop.png && \
				ln -sf human-user-home.png user-home.png && \
				cd ../actions && \
				ln -sf human-add-folder-to-archive.png add-folder-to-archive.png && \
				ln -sf human-address-book-new.png address-book-new.png && \
				ln -sf human-document-open.png document-open.png && \
				ln -sf human-folder-new.png folder-new.png && \
				cd ../status && \
				ln -sf human-folder-drag-accept.png folder-drag-accept.png && \
				ln -sf human-folder_open.png folder_open.png && \
				ln -sf human-folder-open.png folder-open.png && \
				ln -sf human-folder-visiting.png folder-visiting.png && \
				cd ../../;\
		done
	;;

	kubuntufolder)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf kde-folder.png folder.png && \
				ln -sf kde-folder-bookmarks.png folder-bookmarks.png && \
				ln -sf kde-folder-burn.png folder-burn.png && \
				ln -sf kde-folder-cd.png folder-cd.png && \
				ln -sf kde-folder-development.png folder-development.png && \
				ln -sf kde-folder-deviantART.png folder-deviantART.png && \
				ln -sf kde-folder-downloads.png folder-downloads.png && \
				ln -sf kde-folder-locked.png folder-locked.png && \
				ln -sf kde-folder-image.png folder-image.png && \
				ln -sf kde-folder-important.png folder-important.png && \
				ln -sf kde-folder-open.png folder-open.png && \
				ln -sf kde-folder-print.png folder-print.png && \
				ln -sf kde-folder-public.png folder-public.png && \
				ln -sf kde-folder-remote.png folder-remote.png && \
				ln -sf kde-folder-saved-search.png folder-saved-search.png && \
				ln -sf kde-folder-sound.png folder-sound.png && \
				ln -sf kde-folder-tar.png folder-tar.png && \
				ln -sf kde-folder-games.png folder-games.png && \
				ln -sf kde-folder-txt.png folder-txt.png && \
				ln -sf kde-folder-video.png folder-video.png && \
				ln -sf kde-folder-mail.png folder-mail.png && \
				ln -sf kde-user-desktop.png user-desktop.png && \
				ln -sf kde-user-home.png user-home.png && \
				cd ../actions && \
				ln -sf kde-add-folder-to-archive.png add-folder-to-archive.png && \
				ln -sf kde-address-book-new.png address-book-new.png && \
				ln -sf kde-document-open.png document-open.png && \
				ln -sf kde-folder-new.png folder-new.png && \
				cd ../status && \
				ln -sf kde-folder-drag-accept.png folder-drag-accept.png && \
				ln -sf kde-folder_open.png folder_open.png && \
				ln -sf kde-folder-open.png folder-open.png && \
				ln -sf kde-folder-visiting.png folder-visiting.png && \
				cd ../../;\
		done
	;;

	ubuntustudio)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-ubuntustudio.png start-here.png && \
				ln -sf start-here-ubuntustudio.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-circle)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-circle.png start-here.png && \
				ln -sf start-here-gnome-circle.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-acquamarine)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-acquamarine.png start-here.png && \
				ln -sf start-here-gnome-acquamarine.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-black)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-black.png start-here.png && \
				ln -sf start-here-gnome-black.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-blue)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-blue.png start-here.png && \
				ln -sf start-here-gnome-blue.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-brown)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-brown.png start-here.png && \
				ln -sf start-here-gnome-brown.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-green)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-green.png start-here.png && \
				ln -sf start-here-gnome-green.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-orange)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-orange.png start-here.png && \
				ln -sf start-here-gnome-orange.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-pink)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-pink.png start-here.png && \
				ln -sf start-here-gnome-pink.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-red)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-red.png start-here.png && \
				ln -sf start-here-gnome-red.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-blood)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-blood.png start-here.png && \
				ln -sf start-here-gnome-blood.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-skyblue)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-skyblue.png start-here.png && \
				ln -sf start-here-gnome-skyblue.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-violet)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-violet.png start-here.png && \
				ln -sf start-here-gnome-violet.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	gnome-white)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-gnome-white.png start-here.png && \
				ln -sf start-here-gnome-white.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	ubuntu)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-ubuntu.png start-here.png && \
				ln -sf start-here-ubuntu.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	ubuntu-original)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-ubuntuoriginal.png start-here.png && \
				ln -sf start-here-ubuntuoriginal.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	xubuntu)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-xubuntu.png start-here.png && \
				ln -sf start-here-xubuntu.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	kde)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-kde01.png start-here.png && \
				ln -sf start-here-kde01.png start-here-kde.png && \
				cd ../../; \
		done
	;;
	
	kubuntu)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf start-here-kubuntu.png start-here.png && \
				ln -sf start-here-kubuntu.png start-here-kde.png && \
				cd ../../; \
		done
	;;

	orange-trash)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf orange-user-trash.png user-trash.png && \
				cd ../status && \
				ln -sf orange-trashcan_full-new.png trashcan_full-new.png && \
				cd ../../; \
		done
	;;

	human-trash)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf human-user-trash.png user-trash.png && \
				cd ../status && \
				ln -sf human-trashcan_full-new.png trashcan_full-new.png && \
				cd ../../; \
		done
	;;

	meliae-trash)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf meliae-user-trash.png user-trash.png && \
				cd ../status && \
				ln -sf meliae-trashcan_full-new.png trashcan_full-new.png && \
				cd ../../; \
		done
	;;

	mac-trash)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/places && \
				ln -sf mac-user-trash.png user-trash.png && \
				cd ../status && \
				ln -sf mac-trashcan_full-new.png trashcan_full-new.png && \
				cd ../../; \
		done
	;;

	new-navi)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/actions && \
				ln -sf new-go-down.png go-down.png && \
				ln -sf new-go-next.png go-next.png && \
				ln -sf new-go-previous.png go-previous.png && \
				ln -sf new-go-up.png go-up.png && \
				ln -sf new-go-bottom.png go-bottom.png && \
				ln -sf new-go-first.png go-first.png && \
				ln -sf new-go-last.png go-last.png && \
				ln -sf new-go-top.png go-top.png && \
				ln -sf new-go-home.png go-home.png && \
				ln -sf new-view-refresh.png view-refresh.png && \
				ln -sf new-edit-redo.png edit-redo.png && \
				ln -sf new-edit-undo.png edit-undo.png && \
				cd ../../; \
		done
	;;

	old-navi)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/actions && \
				ln -sf old-go-down.png go-down.png && \
				ln -sf old-go-next.png go-next.png && \
				ln -sf old-go-previous.png go-previous.png && \
				ln -sf old-go-up.png go-up.png && \
				ln -sf old-go-bottom.png go-bottom.png && \
				ln -sf old-go-first.png go-first.png && \
				ln -sf old-go-last.png go-last.png && \
				ln -sf old-go-top.png go-top.png && \
				ln -sf old-go-home.png go-home.png && \
				ln -sf old-view-refresh.png view-refresh.png && \
				ln -sf old-edit-redo.png edit-redo.png && \
				ln -sf old-edit-undo.png edit-undo.png && \
				cd ../../; \
		done
	;;

	new-loupe)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/actions && \
				ln -sf new-edit-find-replace.png edit-find-replace.png && \
				ln -sf new-edit-find.png edit-find.png && \
				ln -sf new-zoom-best-fit.png zoom-best-fit.png && \
				ln -sf new-zoom-in.png zoom-in.png && \
				ln -sf new-zoom-original.png zoom-original.png && \
				ln -sf new-zoom-out.png zoom-out.png && \
				cd ../../; \
		done
	;;

	old-loupe)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/actions && \
				ln -sf old-edit-find-replace.png edit-find-replace.png && \
				ln -sf old-edit-find.png edit-find.png && \
				ln -sf old-zoom-best-fit.png zoom-best-fit.png && \
				ln -sf old-zoom-in.png zoom-in.png && \
				ln -sf old-zoom-original.png zoom-original.png && \
				ln -sf old-zoom-out.png zoom-out.png && \
				cd ../../; \
		done
	;;

	mix-loupe)
		for size in 16x16 22x22 24x24 32x32 48x48 72x72 128x128; \
			do cd $size/actions && \
				ln -sf old-edit-find-replace.png edit-find-replace.png && \
				ln -sf old-edit-find.png edit-find.png && \
				ln -sf new-zoom-best-fit.png zoom-best-fit.png && \
				ln -sf new-zoom-in.png zoom-in.png && \
				ln -sf new-zoom-original.png zoom-original.png && \
				ln -sf new-zoom-out.png zoom-out.png && \
				cd ../../; \
		done
	;;

	do-nothing)
	echo "" && echo "Nothing more for change ... ;)" && sleep 3
	;;

	styled-folders)
	user=$(logname)
        timestamp=$(date +%s)
        nautilus_xml=$HOME"/.nautilus/metafiles/file:%2F%2F%2Fhome%2F"$user".xml"
        icon_link="file:///usr/share/icons/Human-O2/128x128/places/"
	icons=("folder-image" "folder-sound" "folder-txt" "folder-downloads" "folder-video" "folder-public" "folder-games")
	l=$(locale language)
	if [ $l == "German" ]
	then
	folders=("Bilder" "Musik" "Dokumente" "Downloads" "Videos" "Öffentlich" "Spiele")
	fi
	if [ $l == "English" ]
	then
	folders=("Pictures" "Music" "Documents" "Downloads" "Videos" "Public" "Games")
	fi
	if [ $l == "Spanish" ]
	then
	folders=("Imágenes" "Música" "Documentos" "Descargas" "Vídeos" "Público" "Juegos")
	fi
	if [ $l == "French" ]
	then
	folders=("Images" "Musique" "Documents" "Téléchargements" "Vidéos" "Public" "Jeux")
	fi
	if [ $l == "Italian" ]
	then
	folders=("Immagini" "Musica" "Documenti" "Download" "Video" "Pubblici" "Giochi")
	fi
	if [ $l == "Polish" ]
	then
	folders=("Obrazy" "Muzyka" "Dokumenty" "Pobrania" "Wideo" "Publiczny" "Gry")
	fi
	##Brazil
	#if [ $l == "Portuguese" ]
	#then
	#folders=("Imagens" "Músicas" "Documentos" "Downloads" "Vídeos" "Pública" "Jogos")
	#fi
	##Portugal
	if [ $l == "Portuguese" ]
	then
	folders=("Imagens" "Música" "Documentos" "Downloads" "Vídeos" "Público" "Jogos")
	fi
        echo '<?xml version="1.0"?>' > $nautilus_xml
        echo '<directory>' >> $nautilus_xml
        j=0
        end=7
        while [ "$j" -lt "$end" ]
        do
          if [ -e $HOME"/"${folders[j]} ]; then
            echo -e "<file name=\""${folders[j]}"\" timestamp=\"$timestamp\" custom_icon=\""$icon_link${icons[j]}.png"\"/>" >> $nautilus_xml
          fi
         j=`expr $j + 1`
        done
        echo "</directory>" >> $nautilus_xml
    ;;

    redo)
	user=$(logname)
        if [ -e $HOME"/.nautilus/metafiles/file:%2F%2F%2Fhome%2F"$user".xml" ]; then
            rm $HOME"/.nautilus/metafiles/file:%2F%2F%2Fhome%2F"$user".xml"
        fi
    ;;
esac
