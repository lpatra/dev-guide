# Assuming the following is the partition structure
#  /dev/sda
#    /dev/sda1 512M EFI
#    /dev/sda2 512M Linux  # for /boot
#    /dev/sda3 XXXG Linux  # for /

# download required packges
pacman -S grub efibootmgr

# mount EFI partition
mkdir /boot/EFI
mount /dev/sda1 /boot/EFI

# install grub
grub-install --target=x86_64-efi --efi-directory=/boot/EFI --bootloader-id=GRUB --recheck

# for virtual box the following additonal step need to be done
mkdir /boot/EFI/BOOT
cp /boot/EFI/GRUB/grubx64.efi /boot/EFI/BOOT/BOOTX64.EFI

# configure grub
grub-mkconfig -o /boot/grub/grub.cfg