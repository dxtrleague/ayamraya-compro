# GitHub Pages Configuration

## Setup untuk Custom Domain (Optional)

Jika Anda ingin menggunakan custom domain untuk GitHub Pages:

1. Buat file `CNAME` di folder `docs/`:
   ```bash
   echo "yourdomain.com" > docs/CNAME
   ```

2. Atau edit `generate-html.sh` untuk otomatis membuat CNAME:
   ```bash
   # Tambahkan setelah touch .nojekyll
   echo "yourdomain.com" > "$OUTPUT_DIR/CNAME"
   ```

3. Setup DNS di domain provider:
   ```
   Type    Name    Value
   A       @       185.199.108.153
   A       @       185.199.109.153
   A       @       185.199.110.153
   A       @       185.199.111.153
   CNAME   www     <username>.github.io
   ```

4. Di GitHub Settings > Pages:
   - Centang "Enforce HTTPS"
   - Custom domain akan otomatis terdeteksi

## File .nojekyll

File `.nojekyll` dibuat otomatis oleh generator untuk memastikan GitHub Pages tidak memproses file dengan Jekyll. Ini penting agar file/folder yang dimulai dengan underscore tetap bisa diakses.

## Struktur Folder

```
docs/
├── .nojekyll           # Disable Jekyll processing
├── CNAME               # (Optional) Custom domain
├── index.html          # Homepage
├── css/
├── js/
└── pic/
```

## Deploy Workflow

1. **Generate HTML:**
   ```bash
   ./generate-html.sh
   ```

2. **Test lokal:**
   ```bash
   ./preview.sh
   # atau
   cd docs && python3 -m http.server 8000
   ```

3. **Commit & Push:**
   ```bash
   git add docs/
   git commit -m "Update static site"
   git push origin master
   ```

4. **GitHub Pages akan auto-deploy** dalam beberapa menit

## Troubleshooting GitHub Pages

### Site tidak muncul
- Tunggu 1-2 menit untuk build
- Cek Settings > Pages, pastikan Source sudah di-set
- Pastikan file `index.html` ada di root folder `docs/`

### CSS/JS tidak load
- Periksa path di HTML (gunakan relative path)
- Pastikan file `.nojekyll` ada
- Check browser console untuk error

### 404 Error
- Pastikan file ada di folder `docs/`
- URL case-sensitive
- Cek apakah repository public

## Tips

- **Cache:** GitHub Pages menggunakan CDN, mungkin perlu clear cache browser
- **HTTPS:** Selalu enforce HTTPS di settings
- **Custom domain:** DNS propagation bisa memakan 24-48 jam
- **Build time:** Biasanya 1-2 menit setelah push

## References

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Custom Domain Setup](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
