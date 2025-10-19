# Ayam Raya - Company Profile Website

Website company profile untuk Ayam Raya Restaurant.

## 🚀 Quick Start

### One-Command Build

Cara tercepat - gunakan build script all-in-one:

```bash
# Generate saja
./build.sh

# Generate + Preview di browser
./build.sh --preview

# Generate + Deploy ke server
./build.sh --deploy

# Generate + Preview + Deploy
./build.sh -p -d
```

### Generate HTML Statis

Jalankan command berikut untuk mengkonversi file PHP menjadi HTML statis:

```bash
./generate-html.sh
```

Hasil konversi akan tersimpan di folder `docs/`.

> **Note:** Folder `docs/` digunakan untuk kompatibilitas dengan GitHub Pages.

### Preview Hasil

Untuk preview hasil di browser:

```bash
./preview.sh
```

Atau jalankan local server:

```bash
cd docs
python3 -m http.server 8000
```

Kemudian buka browser di `http://localhost:8000`

### Deploy ke GitHub Pages

1. **Push ke repository:**
   ```bash
   git add docs/
   git commit -m "Add static HTML files"
   git push origin master
   ```

2. **Aktifkan GitHub Pages:**
   - Buka repository di GitHub
   - Pergi ke **Settings** > **Pages**
   - Di **Source**, pilih branch `master` (atau `main`)
   - Di **Folder**, pilih `/docs`
   - Klik **Save**

3. **Akses website:**
   - Website akan tersedia di: `https://<username>.github.io/<repository-name>/`

### Deploy ke Server (cPanel/VPS)

Untuk deploy ke server hosting:

```bash
./deploy.sh
```

Script akan menampilkan pilihan metode deploy (SCP, SFTP, Rsync, atau Manual).

## 📁 Struktur Folder

```
ayamraya-compro/
├── index.php              # Halaman utama (PHP)
├── top.php                # Header/meta tags (included)
├── css/                   # Stylesheet
│   └── style.css
├── js/                    # JavaScript files
│   └── script.js
├── pic/                   # Images & assets
│   └── logo/
├── central/               # Additional assets
│   └── pic/
├── generate-html.sh       # Script konversi PHP → HTML
├── preview.sh             # Script preview hasil
├── deploy.sh              # Script deploy ke server
├── build.sh               # All-in-one build script
├── docs/                  # Output HTML statis (generated)
│   ├── index.html
│   ├── css/
│   ├── js/
│   └── pic/
└── public_html/           # Legacy folder (dihapus)
```

## 🛠️ Scripts

### `build.sh` ⭐ (Recommended)

All-in-one script untuk generate, preview, dan deploy.

**Usage:**
```bash
./build.sh              # Generate saja
./build.sh --preview    # Generate + Preview
./build.sh --deploy     # Generate + Deploy  
./build.sh -p -d        # Generate + Preview + Deploy
```

### `generate-html.sh`

Generator untuk mengkonversi file PHP ke HTML statis.

**Fitur:**
- ✅ Auto-detect PHP CLI atau gunakan fallback method
- ✅ Merge PHP includes secara otomatis
- ✅ Copy semua assets (CSS, JS, images)
- ✅ Clean output dengan colored logs
- ✅ Output ke folder `docs/` (GitHub Pages compatible)

**Usage:**
```bash
./generate-html.sh
```

### `preview.sh`

Preview hasil konversi di browser.

**Usage:**
```bash
./preview.sh
```

### `deploy.sh`

Deploy HTML statis ke server hosting.

**Metode yang didukung:**
1. SCP (Secure Copy)
2. SFTP
3. Rsync
4. Manual (instruksi lengkap termasuk GitHub Pages)

**Usage:**
```bash
./deploy.sh
```

## 🌐 Deploy ke GitHub Pages

1. Generate HTML statis:
   ```bash
   ./generate-html.sh
   ```

2. Commit dan push folder `docs/`:
   ```bash
   git add docs/
   git commit -m "Deploy static site"
   git push origin master
   ```

3. Aktifkan GitHub Pages:
   - Settings > Pages
   - Source: `master` branch
   - Folder: `/docs`
   - Save

4. Akses di: `https://<username>.github.io/<repo-name>/`

## 📝 Development

### Editing Content

Edit file `index.php` untuk mengubah konten website.

Setelah selesai edit, generate ulang HTML:

```bash
./generate-html.sh
```

### Adding New Pages

1. Buat file PHP baru (misal: `about.php`)
2. Edit `generate-html.sh`, tambahkan file ke array `php_files`:

```bash
php_files=("index.php" "about.php")
```

3. Generate ulang:

```bash
./generate-html.sh
```

## 🔧 Requirements

- **PHP** (optional, script bisa jalan tanpa PHP CLI)
- **Bash** (default di macOS/Linux)
- **curl** (untuk fallback method jika PHP tidak ada)

## 📚 Dokumentasi Lengkap

Lihat [GENERATOR_README.md](GENERATOR_README.md) untuk dokumentasi detail tentang generator.

## 🐛 Troubleshooting

### Script tidak bisa dijalankan

```bash
chmod +x generate-html.sh
chmod +x preview.sh
chmod +x deploy.sh
```

### PHP tidak ditemukan

Install PHP:

```bash
# macOS
brew install php

# Atau cek PHP bawaan
which php
```

Script tetap bisa berjalan tanpa PHP CLI dengan menggunakan fallback method.

## 📄 License

[Your License Here]

## 👥 Author

[Your Name/Team]
