#!/usr/bin/with-contenv bashio
set -e

echo "Hello BMS Pace"
cd /workdir
python3 -u ./bms.py
