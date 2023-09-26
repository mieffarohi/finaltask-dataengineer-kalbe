#!/bin/bash

# Variabel path dan nama direktori
path="/hdfs/data/data1"
name_of_directory="data1"

# Memeriksa apakah direktori ada di dalam path
if [ -d "$path/$name_of_directory" ]; then
  echo "Direktori $name_of_directory Ada!"
else
  echo "Direktori $name_of_directory Tidak Ada!"
  # Membuat direktori jika tidak ditemukan
  mkdir -p "$path/$name_of_directory"
fi

# Sintaks crontab untuk menjalankan skrip pada pukul 07:00 AM setiap hari
# Silakan tambahkan baris ini ke crontab Anda dengan perintah "crontab -e"
# 0 7 * * * /path/ke/skrip-anda.sh

