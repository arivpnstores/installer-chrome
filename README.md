# 📦 Google Chrome Installer for Ubuntu & Debian

Script bash otomatis untuk menginstal **Google Chrome** di sistem operasi **Ubuntu** dan **Debian** (64-bit).

### ✅ Fitur

* Kompatibel dengan **Ubuntu** dan **Debian**
* Menambahkan **GPG key resmi Google**
* Menambahkan **repository Chrome** ke sistem
* Instalasi otomatis versi **google-chrome-stable**
* Proses instalasi cepat dan ringan

### 📋 Persyaratan

* Sistem operasi: Ubuntu 18.04+/Debian 10+
* Arsitektur: **64-bit** (`amd64`)
* Akses `root` / `sudo`

### 🚀 Cara Penggunaan

```bash
bash <(curl -sL https://raw.githubusercontent.com/arivpnstores/installer-chrome/main/install-chrome.sh)
```

### 🧪 Hasil

Setelah selesai, kamu bisa menjalankan Chrome dengan perintah:

```bash
google-chrome --no-sandbox --disable-gpu --disable-software-rasterizer >/dev/null 2>&1 &
```

### 🚮 Cara Menghapus

```bash
sudo apt remove --purge -y google-chrome-stable && sudo rm -f /etc/apt/sources.list.d/google-chrome.list /usr/share/keyrings/google-chrome.gpg && rm -rf ~/.config/google-chrome ~/.cache/google-chrome && sudo apt update
```

### ⚠️ Catatan

* Tidak mendukung sistem **32-bit**
* Butuh koneksi internet aktif

### 🛠️ Lisensi

Open-source di bawah lisensi [MIT](LICENSE)

---

Kalau kamu ingin saya bantu buatkan README lengkap langsung dalam format Markdown (`README.md`), tinggal bilang saja ya!
