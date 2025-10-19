#!/bin/bash

# Script untuk preview hasil konversi HTML
# Usage: ./preview.sh

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Cek apakah folder docs ada
if [ ! -d "docs" ]; then
    echo -e "${RED}Error: Folder docs tidak ditemukan.${NC}"
    echo -e "${BLUE}Jalankan ./generate-html.sh terlebih dahulu.${NC}"
    exit 1
fi

# Cek apakah index.html ada
if [ ! -f "docs/index.html" ]; then
    echo -e "${RED}Error: File docs/index.html tidak ditemukan.${NC}"
    exit 1
fi

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}  Preview HTML Static${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Cek OS untuk command open yang tepat
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo -e "${GREEN}Membuka index.html di browser...${NC}"
    open docs/index.html
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    echo -e "${GREEN}Membuka index.html di browser...${NC}"
    xdg-open docs/index.html
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    # Windows
    echo -e "${GREEN}Membuka index.html di browser...${NC}"
    start docs/index.html
else
    echo -e "${BLUE}Silakan buka file berikut di browser:${NC}"
    echo -e "${GREEN}$(pwd)/docs/index.html${NC}"
fi

echo ""
echo -e "${BLUE}Atau jalankan local server dengan:${NC}"
echo -e "${GREEN}cd docs && python3 -m http.server 8000${NC}"
echo ""
