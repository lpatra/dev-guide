# Assuming the following is the partition structure
#  /dev/sda
#    /dev/sda1 512M EFI
#    /dev/sda2 512M Linux  # for /boot
#    /dev/sda3 XXXG Linux  # for /

mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3

mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot