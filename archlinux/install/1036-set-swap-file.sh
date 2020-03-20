fallocate -l 2G /swapfile
mkswap /swapfile
chmod 600 /swapfile
swapon /swapfile

echo '/swapfile none swap sw 0 0' >> /etc/fstab