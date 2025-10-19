# 🚀 Quick Deploy ke GitHub Pages

## Step 1: Generate HTML Statis

```bash
./generate-html.sh
```

Output akan tersimpan di folder `docs/`

## Step 2: Commit & Push ke GitHub

```bash
# Add semua file di folder docs
git add docs/

# Commit dengan pesan yang jelas
git commit -m "Deploy static site to GitHub Pages"

# Push ke GitHub
git push origin master
```

## Step 3: Aktifkan GitHub Pages

1. Buka repository di GitHub: `https://github.com/<username>/<repository-name>`

2. Klik **Settings** (tab di atas)

3. Scroll ke bagian **Pages** (di sidebar kiri)

4. Di bagian **Source**:
   - **Branch:** Pilih `master` (atau `main`)
   - **Folder:** Pilih `/docs`
   - Klik **Save**

5. Tunggu 1-2 menit untuk build

## Step 4: Akses Website Anda

Website akan tersedia di:
```
https://<username>.github.io/<repository-name>/
```

Contoh:
```
https://dxtrleague.github.io/ayamraya-compro/
```

---

## 🎯 One-Command Workflow

```bash
# Generate + Preview
./build.sh --preview

# Setelah puas dengan hasil, commit & push:
git add docs/ && git commit -m "Update site" && git push
```

---

## ⚡ Update Website

Setiap kali edit konten:

```bash
# 1. Edit file PHP (misal: index.php)
# 2. Generate ulang
./generate-html.sh

# 3. Commit & Push
git add docs/
git commit -m "Update content"
git push origin master
```

GitHub Pages akan otomatis deploy perubahan dalam 1-2 menit.

---

## ✅ Checklist Deploy Pertama Kali

- [ ] Generate HTML: `./generate-html.sh`
- [ ] Test lokal: `./preview.sh`
- [ ] Commit: `git add docs/ && git commit -m "Initial deploy"`
- [ ] Push: `git push origin master`
- [ ] Aktifkan GitHub Pages di Settings > Pages
- [ ] Pilih branch `master` dan folder `/docs`
- [ ] Save dan tunggu 1-2 menit
- [ ] Akses website di URL yang diberikan GitHub

---

## 🔧 Troubleshooting

**❌ Website tidak muncul:**
- Tunggu 2-5 menit untuk build pertama kali
- Refresh halaman Settings > Pages untuk cek status
- Pastikan folder `docs/` ter-commit dan ter-push

**❌ CSS/JS tidak load:**
- Cek browser console (F12) untuk error
- Pastikan file `.nojekyll` ada di folder `docs/`
- Pastikan path di HTML menggunakan relative path

**❌ 404 Error:**
- Pastikan file `index.html` ada di `docs/`
- GitHub Pages case-sensitive untuk filename
- Cek apakah repository sudah public

---

## 📚 Dokumentasi Lengkap

Lihat file-file berikut untuk info lebih detail:

- `README.md` - Overview project
- `GITHUB_PAGES_SETUP.md` - Setup lengkap termasuk custom domain
- `GENERATOR_README.md` - Detail tentang generator

---

**Happy Deploying! 🎉**
