#!/bin/bash

echo "Masukkan Private Key Anda:"
read -s PRIVATE_KEY
echo "Masukkan Wallet Address Anda:"
read WALLET_ADDRESS

echo "Menginstal dependensi..."
sudo apt update && sudo apt upgrade -y
sudo apt install -qy curl git jq lz4 build-essential screen docker-compose

echo "Mengkloning repository Infernet Node..."
git clone https://github.com/ritual-net/infernet-container-starter
cd infernet-container-starter

echo "Menyiapkan konfigurasi..."
cat > deploy/config.json <<EOF
{
    "log_path": "infernet_node.log",
    "chain": {
        "wallet": {
            "private_key": "$PRIVATE_KEY"
        }
    }
}
EOF

echo "Menjalankan node..."
docker compose -f deploy/docker-compose.yaml up -d

echo "Instalasi selesai!"
