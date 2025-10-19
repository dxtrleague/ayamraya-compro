#!/bin/bash

# Script untuk mengkonversi PHP ke HTML statis
# Usage: ./generate-html.sh

# Warna untuk output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}  PHP to HTML Static Generator  ${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Cek apakah PHP terinstal
USE_SERVER=false
if ! command -v php &> /dev/null
then
    echo -e "${YELLOW}Warning: PHP CLI tidak ditemukan.${NC}"
    echo -e "${YELLOW}Script akan menggunakan metode alternatif (PHP Built-in Server + curl)${NC}"
    echo ""
    
    # Cek apakah curl tersedia
    if ! command -v curl &> /dev/null
    then
        echo -e "${RED}Error: curl tidak tersedia. Silakan install PHP atau curl.${NC}"
        echo -e "${YELLOW}Install PHP dengan: brew install php${NC}"
        exit 1
    fi
    USE_SERVER=true
else
    echo -e "${GREEN}✓ PHP ditemukan: $(php -v | head -n 1)${NC}"
    echo ""
fi

# Direktori output
OUTPUT_DIR="docs"

# Hapus folder docs jika sudah ada
if [ -d "$OUTPUT_DIR" ]; then
    echo -e "${BLUE}Menghapus folder $OUTPUT_DIR yang lama...${NC}"
    rm -rf "$OUTPUT_DIR"
fi

# Buat folder docs
echo -e "${GREEN}Membuat folder $OUTPUT_DIR...${NC}"
mkdir -p "$OUTPUT_DIR"

# Copy semua file statis (CSS, JS, images)
echo -e "${GREEN}Menyalin file CSS...${NC}"
if [ -d "css" ]; then
    cp -r css "$OUTPUT_DIR/"
fi

echo -e "${GREEN}Menyalin file JavaScript...${NC}"
if [ -d "js" ]; then
    cp -r js "$OUTPUT_DIR/"
fi

echo -e "${GREEN}Menyalin folder gambar...${NC}"
if [ -d "pic" ]; then
    cp -r pic "$OUTPUT_DIR/"
fi

if [ -d "central" ]; then
    cp -r central "$OUTPUT_DIR/"
fi

if [ -d "cont" ]; then
    cp -r cont "$OUTPUT_DIR/"
fi

# Konversi file PHP ke HTML
echo -e "${GREEN}Mengkonversi file PHP ke HTML...${NC}"

# Array file PHP yang akan dikonversi
php_files=("index.php")

if [ "$USE_SERVER" = true ]; then
    # Metode alternatif: merge manual untuk file sederhana
    echo -e "${YELLOW}Menggunakan metode konversi sederhana...${NC}"
    
    for php_file in "${php_files[@]}"; do
        if [ -f "$php_file" ]; then
            html_file="${php_file%.php}.html"
            
            echo -e "${BLUE}  → Mengkonversi $php_file ke $html_file${NC}"
            
            # Untuk file yang include top.php, kita merge manual menggunakan awk
            if [ "$php_file" = "index.php" ]; then
                # Gunakan awk untuk merge file
                awk '
                /<\?php include\(/ {
                    while ((getline line < "top.php") > 0) {
                        print line
                    }
                    close("top.php")
                    next
                }
                { print }
                ' "$php_file" > "$OUTPUT_DIR/$html_file"
            else
                # Copy as is untuk file lain
                cp "$php_file" "$OUTPUT_DIR/$html_file"
            fi
            
            if [ $? -eq 0 ]; then
                echo -e "${GREEN}    ✓ Berhasil${NC}"
            else
                echo -e "${RED}    ✗ Gagal mengkonversi $php_file${NC}"
            fi
        else
            echo -e "${RED}  ✗ File $php_file tidak ditemukan${NC}"
        fi
    done
else
    # Metode normal: gunakan PHP CLI
    for php_file in "${php_files[@]}"; do
        if [ -f "$php_file" ]; then
            # Nama file output (ganti .php dengan .html)
            html_file="${php_file%.php}.html"
            
            echo -e "${BLUE}  → Mengkonversi $php_file ke $html_file${NC}"
            
            # Jalankan PHP untuk generate HTML
            php "$php_file" > "$OUTPUT_DIR/$html_file"
            
            if [ $? -eq 0 ]; then
                echo -e "${GREEN}    ✓ Berhasil${NC}"
            else
                echo -e "${RED}    ✗ Gagal mengkonversi $php_file${NC}"
            fi
        else
            echo -e "${RED}  ✗ File $php_file tidak ditemukan${NC}"
        fi
    done
fi

# Copy file README jika ada
if [ -f "README.md" ]; then
    cp README.md "$OUTPUT_DIR/"
fi

# Buat file .nojekyll untuk GitHub Pages
echo -e "${GREEN}Membuat file .nojekyll untuk GitHub Pages...${NC}"
touch "$OUTPUT_DIR/.nojekyll"

echo ""
echo -e "${GREEN}================================${NC}"
echo -e "${GREEN}  Konversi Selesai!${NC}"
echo -e "${GREEN}================================${NC}"
echo -e "File HTML statis tersimpan di folder: ${BLUE}$OUTPUT_DIR${NC}"
echo ""
echo -e "Untuk melihat hasilnya, buka: ${BLUE}$OUTPUT_DIR/index.html${NC}"
echo ""
