#! /bin/bash

clear
echo "=============================================="
echo "*******SELAMAT DATANG DI APLIKASI INI*********"
echo "=============================================="
echo -e "\n"
#masukkan username
read -p "Masukkan username: " name
read -p "Masukkan password: " pass

#program
if [ $name = "$USER" ]
then
clear
echo "=============================================="
echo "*******SELAMAT DATANG DI APLIKASI INI*********"
echo "=============================================="
echo -e "\n"
echo "Masuk ke Program"
echo "============================================="
echo "Pilih perintah yang anda ingin lakukan"
echo -e " 1. membuat direktori \n 2. membuat file"
read -p "masukkan pilihan: " numb

# jika pilih 1
        while [ $numb -eq 1 ]
        do
        clear
        echo "=============================================="
        echo "*******SELAMAT DATANG DI APLIKASI INI*********"
        echo "=============================================="
        echo -e "\n"
                read -p "Masukkan nama direktori: " ndir
                read -p "Masukkan lokasi direktori anda: " ldir
                mkdir $ldir/$ndir
                echo "Berhasil membuat direktori $ndir pada lokasi $ldir"
                echo -e "\n"
                echo "=============================================="
        #selesai membuat direktori
                read -p "Buat direktori lain? [y/t]: " newd
                while [ $newd = y ]
                do
                        clear
                       echo "=============================================="
                        echo "*******SELAMAT DATANG DI APLIKASI INI*********"
                        echo "=============================================="
                        echo -e "\n"
                        read -p "Masukkan nama direktori: " ndir
                        read -p "Masukkan lokasi direktori anda: " ldir
                        mkdir $ldir/$ndir
                        echo "Berhasil membuat direktori $ndir pada lokasi $ldir"
                        echo -e "\n"
                        echo "=============================================="
                        read -p "Buat direktori lain? [y/t]: " newd
                                if [ $newd = y ]
                                then
                                        dirl=true
                                else
                                        dirl=false
                                fi
                done
                        read -p "Kembali ke menu utama? [y/t]: " doned
                        while [ $doned = y ]
                        do
                                clear
                               echo "=============================================="
                                echo "*******SELAMAT DATANG DI APLIKASI INI*********"
                                echo "=============================================="
                                echo -e "\n"
                                echo "Masuk ke Program"
                                echo "============================================="
                                echo "Pilih perintah yang anda ingin lakukan"
                                echo -e " 1. membuat direktori \n 2. membuat file"
                                read -p "masukkan pilihan: " numb
                                        if [ $numb = 1 ]
                                        then
                                                menu=true
                                        else
                                                menu=false
                                        fi

                                        # fi
                                break

                        done
                        while [ $doned = t ]
                        do
                        echo "Pembuatan direktori selesai"
                        break 3
                        done

        done

        #jika pilih 2
        while [ $numb -eq 2 ]
        do
        clear
        echo "=============================================="
        echo "*******SELAMAT DATANG DI APLIKASI INI*********"
        echo "=============================================="
        echo -e "\n"
        read -p "Masukkan nama file: " nfile
        read -p "Masukkan lokasi direktori anda: " lfile
        touch $lfile/$nfile
        echo "Berhasil membuat file $nfile pada lokasi $lfile"
        echo -e "\n"
        echo "=============================================="
        #selesai membuat file
                read -p "Buat file lain? [y/t]: " newf
                while [ $newf = y ]
                do
                        clear
                        echo "=============================================="
                    	echo "*******SELAMAT DATANG DI APLIKASI INI*********"
                        echo "=============================================="
                        echo -e "\n"
                        read -p "Masukkan nama file: " nfile
                        read -p "Masukkan lokasi direktori anda: " lfile
                        touch $lfile/$nfile
                        echo "Berhasil membuat file $nfile pada lokasi $lfile"
                        echo -e "\n"
                        echo "=============================================="
                        read -p "Buat file lain? [y/t]: " newf
                                if [ $newf = "y" ]
                                then
                                        filelain=true
                                else
                                        filelain=false
                                fi
                done
                        read -p "Kembali ke menu utama? [y/t]: " doned
                        while [ $doned = y ]
                        do
                                clear
                                echo "=============================================="
                              echo "*******SELAMAT DATANG DI APLIKASI INI*********"
                                echo "=============================================="
                                echo -e "\n"
                                echo "Masuk ke Program"
                                echo "============================================="
                                echo "Pilih perintah yang anda ingin lakukan"
                                echo -e " 1. membuat direktori \n 2. membuat file"
                                read -p "masukkan pilihan: " numb
                                        if [ $numb -eq 2 ]
                                        then
                                                menu=true
                                        else
                                                menu=false
                                        fi
                                  break
                        done 
                        while [ $doned = t ]
                        do
                        echo "Pembuatan file selesai"
                        break 3
                        done
        done
else
        echo "Username tidak terdaftar"
fi
