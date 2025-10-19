#!/bin/bash

# Script untuk deploy HTML statis ke server
# Usage: ./deploy.sh

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}  Deploy HTML Static ke Server  ${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Cek apakah folder docs ada
if [ ! -d "docs" ]; then
    echo -e "${RED}Error: Folder docs tidak ditemukan.${NC}"
    echo -e "${BLUE}Jalankan ./generate-html.sh terlebih dahulu.${NC}"
    exit 1
fi

echo -e "${YELLOW}Script ini akan membantu Anda deploy ke server.${NC}"
echo ""
echo -e "${BLUE}Pilih metode deploy:${NC}"
echo "1. SCP (Secure Copy)"
echo "2. SFTP"
echo "3. Rsync"
echo "4. Manual (tampilkan instruksi)"
echo ""

read -p "Pilih metode (1-4): " method

case $method in
    1)
        echo ""
        echo -e "${BLUE}=== Deploy menggunakan SCP ===${NC}"
        echo ""
        read -p "Masukkan username server: " username
        read -p "Masukkan host/IP server: " host
        read -p "Masukkan path tujuan di server: " remote_path
        
        echo ""
        echo -e "${YELLOW}Command yang akan dijalankan:${NC}"
        echo -e "${GREEN}scp -r docs/* $username@$host:$remote_path${NC}"
        echo ""
        read -p "Lanjutkan? (y/n): " confirm
        
        if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
            scp -r docs/* "$username@$host:$remote_path"
            echo ""
            echo -e "${GREEN}✓ Deploy selesai!${NC}"
        else
            echo -e "${YELLOW}Deploy dibatalkan.${NC}"
        fi
        ;;
    
    2)
        echo ""
        echo -e "${BLUE}=== Deploy menggunakan SFTP ===${NC}"
        echo ""
        read -p "Masukkan username server: " username
        read -p "Masukkan host/IP server: " host
        read -p "Masukkan path tujuan di server: " remote_path
        
        echo ""
        echo -e "${YELLOW}Membuat batch file untuk SFTP...${NC}"
        
        cat > /tmp/sftp_batch.txt << EOF
cd $remote_path
put -r docs/*
bye
EOF
        
        echo -e "${GREEN}Command yang akan dijalankan:${NC}"
        echo -e "${GREEN}sftp -b /tmp/sftp_batch.txt $username@$host${NC}"
        echo ""
        read -p "Lanjutkan? (y/n): " confirm
        
        if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
            sftp -b /tmp/sftp_batch.txt "$username@$host"
            rm /tmp/sftp_batch.txt
            echo ""
            echo -e "${GREEN}✓ Deploy selesai!${NC}"
        else
            echo -e "${YELLOW}Deploy dibatalkan.${NC}"
            rm /tmp/sftp_batch.txt
        fi
        ;;
    
    3)
        echo ""
        echo -e "${BLUE}=== Deploy menggunakan Rsync ===${NC}"
        echo ""
        read -p "Masukkan username server: " username
        read -p "Masukkan host/IP server: " host
        read -p "Masukkan path tujuan di server: " remote_path
        
        echo ""
        echo -e "${YELLOW}Command yang akan dijalankan:${NC}"
        echo -e "${GREEN}rsync -avz --delete docs/ $username@$host:$remote_path${NC}"
        echo ""
        read -p "Lanjutkan? (y/n): " confirm
        
        if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
            rsync -avz --delete docs/ "$username@$host:$remote_path"
            echo ""
            echo -e "${GREEN}✓ Deploy selesai!${NC}"
        else
            echo -e "${YELLOW}Deploy dibatalkan.${NC}"
        fi
        ;;
    
    4)
        echo ""
        echo -e "${BLUE}=== Instruksi Manual Deploy ===${NC}"
        echo ""
        echo -e "${YELLOW}Anda dapat deploy dengan cara:${NC}"
        echo ""
        echo -e "${GREEN}1. Menggunakan FTP Client (FileZilla, Cyberduck, dll):${NC}"
        echo "   - Buka FTP client favorit Anda"
        echo "   - Connect ke server hosting"
        echo "   - Upload semua isi folder docs/ ke root web directory"
        echo ""
        echo -e "${GREEN}2. Menggunakan cPanel File Manager:${NC}"
        echo "   - Login ke cPanel"
        echo "   - Buka File Manager"
        echo "   - Navigasi ke public_html atau www"
        echo "   - Upload semua file dari folder docs/"
        echo ""
        echo -e "${GREEN}3. Menggunakan GitHub Pages:${NC}"
        echo "   - Push folder docs ke repository"
        echo "   - Aktifkan GitHub Pages di Settings > Pages"
        echo "   - Pilih branch dan /docs folder"
        echo ""
        echo -e "${BLUE}Path folder lokal:${NC}"
        echo -e "${GREEN}$(pwd)/docs${NC}"
        echo ""
        ;;
    
    *)
        echo -e "${RED}Pilihan tidak valid.${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${BLUE}==================================${NC}"
