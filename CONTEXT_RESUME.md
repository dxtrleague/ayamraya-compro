# 📝 Project Context Resume: ayamraya-compro

## 📦 Struktur Project (per Oktober 2025)

```
ayamraya-compro/
├── build.sh                  # All-in-one build script (generate, preview, deploy)
├── DEPLOY_GITHUB_PAGES.md    # Quick guide deploy ke GitHub Pages
├── deploy.sh                 # Script deploy ke server (SCP, SFTP, Rsync, Manual)
├── docs/                     # Output HTML statis (untuk GitHub Pages)
│   ├── .nojekyll             # Disable Jekyll processing (auto-generated)
│   ├── CNAME                 # (Optional) Custom domain
│   ├── index.html            # Homepage hasil konversi PHP
│   ├── css/                  # CSS assets
│   ├── js/                   # JS assets
│   ├── pic/                  # Images
│   ├── central/              # Additional assets
│   └── README.md             # Copy dari root (optional)
├── generate-html.sh          # Script generator PHP → HTML statis
├── GENERATOR_README.md       # Dokumentasi detail generator
├── GITHUB_PAGES_SETUP.md     # Setup lengkap GitHub Pages + custom domain
├── INSTALLATION_SUMMARY.md   # Summary fitur, tips, dan workflow
├── preview.sh                # Script preview hasil di browser
├── README.md                 # Dokumentasi utama
├── top.php, index.php        # Sumber utama PHP
├── css/, js/, pic/, central/ # Asset folders
└── .gitignore                # Ignore rules (docs/ tidak di-ignore)
```

## 🚩 Masalah & Solusi yang Sudah Dihadapi

### 1. **Konversi PHP ke HTML Statis**
- **Masalah:** Ingin mengubah file PHP (dengan include) menjadi HTML statis untuk deployment.
- **Solusi:** Dibuat script `generate-html.sh` yang:
  - Bisa jalan dengan/atau tanpa PHP CLI (fallback awk/manual merge)
  - Otomatis merge file include (misal: `<?php include('top.php'); ?>`)
  - Copy semua asset (CSS, JS, images, central, cont)
  - Output ke `docs/` agar kompatibel GitHub Pages (GitHub Pages requirement)

### 2. **Preview Hasil Statis**
- **Masalah:** Perlu cara mudah preview hasil HTML statis.
- **Solusi:** Dibuat script `preview.sh` yang auto-buka browser (macOS/Linux/Windows) dan saran local server.

### 3. **Deploy ke Server & GitHub Pages**
- **Masalah:** Perlu workflow deploy ke server (SCP, SFTP, Rsync) dan GitHub Pages.
- **Solusi:**
  - Script `deploy.sh` support semua metode deploy, termasuk instruksi GitHub Pages.
  - Dokumentasi lengkap di `DEPLOY_GITHUB_PAGES.md` dan `GITHUB_PAGES_SETUP.md`.
  - Otomatis generate `.nojekyll` agar asset/folder underscore tidak diabaikan.

### 4. **All-in-One Workflow**
- **Masalah:** Ingin workflow sekali jalan (generate, preview, deploy).
- **Solusi:** Dibuat `build.sh` dengan argumen `--preview` dan `--deploy`.

### 5. **Dokumentasi & Onboarding**
- **Masalah:** Perlu dokumentasi jelas untuk user baru dan AI assistant.
- **Solusi:**
  - Semua script didokumentasikan di `README.md`.
  - Ada quick guide (`DEPLOY_GITHUB_PAGES.md`), setup lengkap (`GITHUB_PAGES_SETUP.md`), dan summary (`INSTALLATION_SUMMARY.md`).
  - File ini (`CONTEXT_RESUME.md`) sebagai resumeable context untuk AI.

## 🧠 Catatan Teknis
- `.gitignore` tidak meng-ignore folder `docs/` agar bisa di-push ke GitHub Pages.
- Script generator bisa di-extend untuk file PHP lain (edit array `php_files` di `generate-html.sh`).
- Untuk custom domain, tinggal tambahkan file `CNAME` di `docs/`.
- Semua error handling sudah di-improve (cek PHP, cek asset, cek folder, colored output).

## 💡 Cara Kerja Utama
- Edit konten di file PHP (misal: `index.php`)
- Jalankan `./generate-html.sh` → hasil ke `docs/`
- Preview dengan `./preview.sh` atau local server
- Deploy ke GitHub Pages dengan commit & push folder `docs/`
- Aktifkan GitHub Pages di Settings > Pages, pilih branch dan folder `docs/`

## 📚 Referensi Dokumentasi
- `README.md` — Overview & workflow
- `GENERATOR_README.md` — Detail generator
- `DEPLOY_GITHUB_PAGES.md` — Quick deploy guide
- `GITHUB_PAGES_SETUP.md` — Setup lengkap + custom domain
- `INSTALLATION_SUMMARY.md` — Fitur & tips
- `CONTEXT_RESUME.md` — (file ini) untuk AI context

---

**Resumeable context ini dibuat otomatis oleh AI untuk membantu pemahaman konteks project, masalah, dan solusi yang sudah diterapkan.**
