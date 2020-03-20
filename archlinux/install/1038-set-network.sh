echo 'archdev' >> /etc/hostname

echo '127.0.0.1    localhost' >> /etc/hosts
echo '::1          localhost' >> /etc/hosts
echo '127.0.0.1    archdev.localdomain    localhost' >> /etc/hosts

pacman -S networkmanager

systemctl enable NetworkManager
