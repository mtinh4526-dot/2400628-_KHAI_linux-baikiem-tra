#!/bin/bash

LOGFILE=~/MSSV_HoTen_Linux/logs/hethong.log

{
echo "===== THONG TIN HE THONG ====="
echo "Nguoi dung: $(whoami)"
echo "Ten may: $(hostname)"
echo "Ngay gio: $(date)"
echo "Kernel: $(uname -r)"

echo
echo "===== RAM ====="
free -h

echo
echo "===== O DIA ====="
df -h

echo
echo "===== KIEM TRA MANG ====="

if ping -c 4 google.com.vn > /dev/null 2>&1
then
    echo "Co ket noi mang"
else
    echo "Khong xac nhan duoc ket noi mang"
fi

} | tee "$LOGFILE"
