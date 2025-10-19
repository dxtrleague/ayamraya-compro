# 🎉 Generator PHP to HTML - Installation Complete!

Telah berhasil dibuat sistem generator untuk mengkonversi file PHP ke HTML statis.

## ✅ Yang Telah Dibuat

### 1. **generate-html.sh** - Core Generator
- Mengkonversi file PHP ke HTML statis
- Auto-merge PHP includes (seperti `top.php`)
- Copy semua assets (CSS, JS, images)
- Support dengan atau tanpa PHP CLI
- Output ke folder `docs/` (GitHub Pages compatible)

### 2. **preview.sh** - Preview Tool
- Buka hasil HTML di browser
- Deteksi OS otomatis (macOS/Linux/Windows)
- Saran menjalankan local server

### 3. **deploy.sh** - Deployment Tool
- Deploy ke server hosting
- Support 4 metode:
  - SCP (Secure Copy)
  - SFTP
  - Rsync
  - Manual (instruksi lengkap + GitHub Pages)

### 4. **build.sh** ⭐ - All-in-One Script
- Kombinasi generate + preview + deploy
- Flexible options dengan flags
- One-command workflow

### 5. **Dokumentasi**
- README.md (updated)
- GENERATOR_README.md (dokumentasi detail)
- .gitignore (updated)

## 🚀 Cara Penggunaan

### Quick Start (Paling Mudah)

```bash
# Generate HTML statis
./build.sh

# Generate + Preview di browser
./build.sh --preview

# Generate + Deploy ke server
./build.sh --deploy
```

### Step by Step

```bash
# 1. Generate HTML
./generate-html.sh

# 2. Preview hasil
./preview.sh

# 3. Deploy ke server (optional)
./deploy.sh
```

## 📋 Workflow Development

1. **Edit konten** di `index.php`
2. **Generate HTML** dengan `./generate-html.sh`
3. **Preview** dengan `./preview.sh`
4. **Deploy** dengan `./deploy.sh` (jika sudah siap)

Atau gunakan one-command:
```bash
./build.sh -p    # Generate + Preview
```

## 🎯 Fitur Unggulan

✅ **Tanpa ketergantungan PHP** - Bisa jalan meski PHP tidak terinstall  
✅ **Auto-merge includes** - File PHP include otomatis di-merge  
✅ **Copy semua assets** - CSS, JS, images otomatis ter-copy  
✅ **Multiple deploy methods** - Pilih cara deploy yang paling cocok  
✅ **Colored output** - Mudah dibaca dan di-monitor  
✅ **Error handling** - Deteksi error dengan jelas  

## 📁 Hasil Output

Setelah generate, struktur `docs/`:

```
docs/
├── index.html          # File HTML hasil konversi
├── css/
│   └── style.css
├── js/
│   └── script.js
├── pic/
│   └── logo/
├── central/
│   └── pic/
└── cont/               # (jika ada)
```

## 🌐 Deploy ke GitHub Pages

1. Generate HTML:
   ```bash
   ./generate-html.sh
   ```

2. Commit dan push:
   ```bash
   git add docs/
   git commit -m "Deploy to GitHub Pages"
   git push origin master
   ```

3. Aktifkan di GitHub:
   - Repository Settings > Pages
   - Source: `master` branch
   - Folder: `/docs`
   - Save

4. Akses website:
   ```
   https://<username>.github.io/<repository-name>/
   ```

## 🔧 Customization

### Menambah File PHP Lain

Edit `generate-html.sh`, bagian array `php_files`:

```bash
php_files=("index.php" "about.php" "contact.php")
```

### Mengubah Output Directory

Edit variabel `OUTPUT_DIR` di `generate-html.sh`:

```bash
OUTPUT_DIR="dist"  # atau nama folder lain
```

## 💡 Tips

1. **Selalu generate ulang** setelah edit PHP
2. **Test di local** sebelum deploy
3. **Backup** sebelum overwrite di server
4. **Gunakan build.sh** untuk workflow cepat

## 🐛 Troubleshooting

### Permission denied
```bash
chmod +x *.sh
```

### PHP include tidak ter-merge
- Cek format PHP include di file
- Harus format: `<?php include('namafile.php'); ?>`

### Preview tidak buka browser
- Cek OS compatibility
- Atau manual buka: `open docs/index.html`

## 🌟 GitHub Pages Benefits

- ✅ **Gratis hosting** untuk repository public
- ✅ **HTTPS otomatis** dengan SSL certificate
- ✅ **Custom domain** support
- ✅ **Fast CDN** global
- ✅ **Easy deployment** via git push

## 📞 Support

Jika ada masalah, cek:
1. README.md - Overview
2. GENERATOR_README.md - Detail dokumentasi
3. `./script.sh --help` - Help untuk setiap script

---

**Happy Generating! 🚀**
