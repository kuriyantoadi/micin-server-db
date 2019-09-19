#!/bin/bash

clear
echo "##########################################"
echo "#          SELAMAT DATANG                #"
echo "#        Program Micin Server            #"
echo "##########################################"
echo ""
echo ""
echo "1. phpmyadmin aktif "
echo "2. phpmyadmin non-aktif"
echo ""
echo ""
echo -n "Inputkan Pilihan anda : "
read pil

#echo -n "Anda ingin meninstall xampp? (Y/N) "
#read xam

	if [ 1 = $pil ]
	then
		clear
		echo "phpmyadmin aktif"
		sudo rm /opt/lampp/etc/extra/httpd-xampp.conf
		sudo cp file/httpd-xampp.conf.palsu /opt/lampp/etc/extra/
		sudo mv /opt/lampp/etc/extra/httpd-xampp.conf.palsu /opt/lampp/etc/extra/httpd-xampp.conf
		sudo /opt/lampp/lampp restart
	elif [ 2 = $pil ]
	then
		clear
                echo "phpmyadmin tidak aktif"
                sudo rm /opt/lampp/etc/extra/httpd-xampp.conf
                sudo cp file/httpd-xampp.conf.asli /opt/lampp/etc/extra/
                sudo mv /opt/lampp/etc/extra/httpd-xampp.conf.asli /opt/lampp/etc/extra/httpd-xampp.conf
		sudo /opt/lampp/lampp restart
	else
		echo "Maaf, pilihan anda tidak sesuai"
		exit 1
	fi

