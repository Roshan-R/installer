
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

chmod +x winstall.sh
mv ./winstall.sh /bin/bash/winstall
