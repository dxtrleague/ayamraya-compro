#!/bin/bash

# All-in-one script: Generate, Preview, dan Deploy
# Usage: ./build.sh [--preview] [--deploy]

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Parse arguments
PREVIEW=false
DEPLOY=false

for arg in "$@"
do
    case $arg in
        --preview|-p)
            PREVIEW=true
            shift
            ;;
        --deploy|-d)
            DEPLOY=true
            shift
            ;;
        --help|-h)
            echo "Usage: ./build.sh [OPTIONS]"
            echo ""
            echo "Options:"
            echo "  -p, --preview    Preview hasil di browser setelah generate"
            echo "  -d, --deploy     Deploy ke server setelah generate"
            echo "  -h, --help       Tampilkan help ini"
            echo ""
            echo "Examples:"
            echo "  ./build.sh                 # Generate saja"
            echo "  ./build.sh --preview       # Generate + Preview"
            echo "  ./build.sh --deploy        # Generate + Deploy"
            echo "  ./build.sh -p -d           # Generate + Preview + Deploy"
            exit 0
            ;;
    esac
done

echo -e "${BLUE}╔════════════════════════════════╗${NC}"
echo -e "${BLUE}║  Ayam Raya Build Script       ║${NC}"
echo -e "${BLUE}╚════════════════════════════════╝${NC}"
echo ""

# Step 1: Generate HTML
echo -e "${GREEN}[1/3] Generating HTML...${NC}"
./generate-html.sh

if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Generate gagal!${NC}"
    exit 1
fi

echo ""

# Step 2: Preview (optional)
if [ "$PREVIEW" = true ]; then
    echo -e "${GREEN}[2/3] Opening preview...${NC}"
    ./preview.sh
    echo ""
else
    echo -e "${YELLOW}[2/3] Preview dilewati (gunakan --preview untuk preview)${NC}"
    echo ""
fi

# Step 3: Deploy (optional)
if [ "$DEPLOY" = true ]; then
    echo -e "${GREEN}[3/3] Deploying...${NC}"
    ./deploy.sh
else
    echo -e "${YELLOW}[3/3] Deploy dilewati (gunakan --deploy untuk deploy)${NC}"
fi

echo ""
echo -e "${GREEN}✓ Build selesai!${NC}"
echo ""
