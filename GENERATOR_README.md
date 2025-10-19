# Generator PHP to HTML

Script untuk mengkonversi file PHP di workspace ini menjadi HTML statis.

## Cara Penggunaan

### 1. Menjalankan Generator

Jalankan command berikut di terminal:

```bash
./generate-html.sh
```

### 2. Hasil Output

Setelah script dijalankan, folder `docs` akan dibuat dengan struktur:

```
docs/
├── index.html          # File HTML hasil konversi
├── css/                # Folder CSS
├── js/                 # Folder JavaScript
├── pic/                # Folder gambar
├── central/            # Folder central
└── cont/               # Folder cont (jika ada)
```

> **Note:** Folder `docs/` digunakan untuk kompatibilitas dengan GitHub Pages.

### 3. Preview Hasil

Untuk melihat hasil konversi, buka file:

```bash
open docs/index.html
```

Atau jalankan local server:

```bash
cd docs
python3 -m http.server 8000
```

Kemudian buka browser di `http://localhost:8000`

## Fitur

- ✅ Konversi otomatis file PHP ke HTML
- ✅ Copy otomatis semua file statis (CSS, JS, images)
- ✅ Output yang bersih dan terorganisir
- ✅ Error handling
- ✅ Colored output untuk kemudahan monitoring
- ✅ GitHub Pages compatible (output ke `/docs` folder)

## Requirements

- PHP CLI terinstal di sistem
- Permission untuk menjalankan script bash

## Troubleshooting

### Script tidak bisa dijalankan

Pastikan script memiliki permission execute:

```bash
chmod +x generate-html.sh
```

### PHP tidak ditemukan

Install PHP terlebih dahulu:

```bash
# macOS (menggunakan Homebrew)
brew install php

# Atau gunakan PHP bawaan macOS
which php
```

### Error saat konversi

Periksa apakah ada error di file PHP:

```bash
php -l index.php
```

## Kustomisasi

Untuk menambahkan file PHP lain yang perlu dikonversi, edit array `php_files` di dalam script:

```bash
php_files=("index.php" "about.php" "contact.php")
```

## Deploy ke Production

Setelah generate, folder `docs` bisa langsung di-upload ke hosting:

```bash
# Contoh upload via SCP
scp -r docs/* user@server:/path/to/webroot/

# Atau via FTP menggunakan client favorit Anda
```

### Deploy ke GitHub Pages

1. Commit folder `docs`:
   ```bash
   git add docs/
   git commit -m "Deploy to GitHub Pages"
   git push origin master
   ```

2. Aktifkan GitHub Pages di repository:
   - Buka Settings > Pages
   - Source: pilih branch `master`
   - Folder: pilih `/docs`
   - Klik Save

3. Website akan tersedia di:
   ```
   https://<username>.github.io/<repository-name>/
   ```
