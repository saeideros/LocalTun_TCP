#!/bin/bash
apt update -y
apt install wget -y
wget -O /etc/logo2.sh https://github.com/saeideros/UDP2RAW_FEC/raw/main/logo2.sh
chmod +x /etc/logo2.sh
if [ -f "tun.py" ]; then
    rm tun.py
fi
wget https://github.com/saeideros/LocalTun_TCP/saeideros/download/v1.7/tun.py
python3 tun.py
