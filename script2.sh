#! /bin/bash
clear
echo "=========================================================================="
echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
echo "=========================================================================="
echo "**************************************************************************"
echo "                         -= Halalman Login =-"
echo "**************************************************************************"
read -p "Nama User: " namauser
read -p "Password: " password
if [ $namauser = $USER ]
then
	menuutama='y'
	while [ $menuutama = 'y' ]
	do
		clear
        	echo "=========================================================================="
	        echo "                            SELAMAT DATANG $namauser"
        	echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
	        echo "=========================================================================="
        	echo "Pilih angka untuk perintah yang akan anda lakukan"
	        echo "[1] Membuat direktori"
        	echo "[2] Membuat File"
	        echo "--------------------------------------------------------------------------"
        	read -p "Masukan pilihan anda: " angka
        	#jika pilih 1
	        if [ $angka -eq 1 ]	
        	then
			dirlagi='y'
			while [ $dirlagi = 'y' ]
			do
                		clear
		                echo "=========================================================================="
	        	        echo "                            SELAMAT DATANG $namauser"
		                echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
	        	        echo "=========================================================================="
	        	        echo "                         --= Membuat Direktori =--"
		                echo "--------------------------------------------------------------------------"
	        	        read -p "Masukan nama direktori: " dirname
		                echo "masukan lokasi lengkap direktori akan dibuat (diakhiri simbol /)" 
				read -p "--> " locdir
		               	mkdir $locdir$dirname
		                echo "-------------------------------------------------------------------------"
        		        echo "Selamat direktori $dirname telah berhasil dibuat di $locdir"
                		ls -l $locdir
		                echo "-------------------------------------------------------------------------"
				read -p "Buat direktori lagi ? [y/n] " dirlagi
				if [ $dirlagi = 'n' ]
				then
					read -p "Kembali kemenu Utama [y/n] " menuutama
				fi
			done
	       	elif [ $angka -eq 2 ]
        	then  
			filelagi='y'
			while [ $filelagi = 'y' ]
			do
	                	clear
		                echo "=========================================================================="
	        	        echo "                            SELAMAT DATANG $namauser"
	                	echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
	        	        echo "=========================================================================="
        	        	echo "                         --= Membuat File =--"
	        	        echo "--------------------------------------------------------------------------"
        	        	read -p "Masukan nama file: " filename
		                echo "masukan lokasi lengkap file yang akan dibuat (diakhiri simbol /)" 
				read -p "--> " locfile
        	        	touch $locfile$filename
	        	        echo "-------------------------------------------------------------------------"
        	        	echo "Selamat file $filename telah berhasil dibuat di $locfile"
	                	ls -l $locfile
		                echo "-------------------------------------------------------------------------"
				read -p "Buat file lagi ? [y/n] " filelagi
				if [ $filelagi = 'n' ]
				then
					read -p "Kembali kemenu Utama [y/n] " menuutama
				fi
			done
		
        	else
                	clear
	                echo "=========================================================================="
        	        echo "                            SELAMAT DATANG $namauser"
                	echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
	                echo "=========================================================================="
        	        echo ""
                	echo "**************************************************************************"
	                echo "Mohon untuk memasukan salah satu angka yang tertera di pilihan"
        	        echo "**************************************************************************"
        	fi
	done
			clear
                	echo "**************************************************************************"
	                echo "                               TERIMA KASIH"
        	        echo "**************************************************************************"


else
                clear
                echo "=========================================================================="
                echo "                  PROGRAM MANAJEMEN FILE DAN DIREKTORI"
                echo "=========================================================================="
                echo ""
                echo "**************************************************************************"
                echo "Maaf username $namauser tidak terdaftar di dalam sistem"
                echo "**************************************************************************"
fi
