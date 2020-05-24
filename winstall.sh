#!/bin/bash

if [[ $1 == "make" ]];then
		if [[  $# != 2 ]];then
			echo "make sure you entered the thing correctly"
			exit
		fi
	echo "Making $2..."
	mkdir "$2.win"
	cd "$2.win"
	apt-get download $2 && apt-cache depends -i $2 | awk '/Depends:/ {print $2}' | xargs  apt-get download
	if [ ! "$(ls -A )" ];then
		cd ..
		rm -r "$2.win"
	fi
	echo "Done making $2.win."
fi

if [[ $1 == "install" ]];then
	if [ "$EUID" -ne 0 ]
		then echo "Please run as root"
		exit
	fi
	echo "Installing.."
	dpkg -i *.deb
fi

