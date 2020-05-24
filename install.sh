#!/bin/bash

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

chmod a+rx winstall.sh
#mv ./winstall.sh /usr/local/bin
sudo cp ./winstall.sh /usr/local/bin/winstall
