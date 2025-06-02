#!/bin/bash

# Script Installer Google Chrome untuk Ubuntu & Debian
# By Ari Setiawan

# Warna
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

echo -e "${GREEN}Memulai proses instalasi Google Chrome...${RESET}"

# Pastikan dijalankan sebagai root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Silakan jalankan script ini sebagai root (sudo).${RESET}"
  exit 1
fi

# Update repository
echo -e "${GREEN}Memperbarui daftar paket...${RESET}"
apt update -y

# Install dependensi
echo -e "${GREEN}Menginstal dependensi...${RESET}"
apt install -y wget curl gnupg2 ca-certificates apt-transport-https

# Tambahkan key Google
echo -e "${GREEN}Menambahkan GPG key Google...${RESET}"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-chrome.gpg

# Tambahkan repository Chrome
echo -e "${GREEN}Menambahkan repository Chrome...${RESET}"
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

# Update ulang dan install Chrome
echo -e "${GREEN}Mengupdate ulang dan menginstal Google Chrome...${RESET}"
apt update -y
apt install -y google-chrome-stable

# Verifikasi instalasi
if command -v google-chrome &> /dev/null; then
  echo -e "${GREEN}✅ Google Chrome berhasil diinstal!${RESET}"
  google-chrome --version
else
  echo -e "${RED}❌ Gagal menginstal Google Chrome.${RESET}"
fi
