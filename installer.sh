
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

chmod +x winstall.sh
cp ./winstall.sh /usr/local/bin
