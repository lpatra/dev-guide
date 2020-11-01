[Index][home] > Linux > Arch > Installation


# Arch Linux installation guide for EFI based systems

## Introduction
Refer the [official installation guide](https://wiki.archlinux.org/index.php/Installation_guide) for all the steps. This wiki outlines some general customisations. 

---
### Keyboard
- If you are setting up arch linux in a virtual box inside a mac, then stick to the default keyboard layout as there is no appropriate keyboard layout for apple international keyboard
- Set the console font as follows
```bash
setfont /usr/share/kbd/consolefonts/Lat2-Terminus16.psfu.gz
```
---
### Set ntp time
```bash
timedatectl set-ntp true
```

---
### Setup Partitions
* create partitions
```
/dev/sda
  /dev/sda1 512M EFI
  /dev/sda2 512M Linux  # for /boot
  /dev/sda3 XXXG Linux  # for /
```
* format partitions
```
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3
```
* mount partitions
```bash
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot
```

---
### Install Arch Linux
- pacstrap lts version
```bash
pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware
```
- generate the fstab
```bash
genfstab -U -p /mnt >> /mnt/etc/fstab
```
- chroot to the system
```bash
arch-chroot /mnt
```

---
### Setup time and locale
- set time
```bash
ln -sf /usr/share/zoneinfo/Europe/Dublin /etc/localtime
hwclock --systohc
```
- uncomment locales in `/etc/locale.gen`
- set locale
```bash
locale-gen
echo 'LANG=en_US.UTF-8' >> /etc/locale.conf
```

---
### Setup a swap file
* setup a swap file of 2GB
```bash
fallocate -l 2G /swapfile
mkswap /swapfile
chmod 600 /swapfile
swapon /swapfile
```
* add it to fstab
```bash
echo '/swapfile none swap sw 0 0' >> /etc/fstab
```

---
### setup network
- set hostname
```bash
echo 'archdev' >> /etc/hostname
```
- set /etc/hosts
```bash
echo '127.0.0.1    localhost' >> /etc/hosts
echo '::1          localhost' >> /etc/hosts
echo '127.0.0.1    archdev.localdomain    localhost' >> /etc/hosts
```
* install packages
```bash
pacman -S networkmanager dhcpcd
```
* enable services
```bash
systemctl enable NetworkManager
systemctl enable dhcpcd
```

---
### Set up Users
- setup root password
```bash
passwd
```
#### Add a new user
* Create the user `optimus`
```bash
useradd -m optimus
```
* Set passwd for `optimus`
```bash
passwd optimus
```
* Add `optimus` to various groups
```bash
usermod -aG wheel,audio,video,optical,storage,uucp optimus
```
#### Install sudo
- install the package
```bash
pacman -S sudo
```
* edit the sudo config using the `visudo` command and allow access for `wheel` group



---
### install grub bootloader
* download packages
```bash
pacman -S grub efibootmgr
```
* mount EFI partition
```bash
mkdir /boot/efi
mount /dev/sda1 /boot/efi
```

* install grub
```
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --recheck
```
  - for virtual box the following additonal step need to be done
```bash
mkdir /boot/efi/EFI/BOOT
cp /boot/efi/EFI/GRUB/grubx64.efi /boot/efi/EFI/BOOT/BOOTX64.EFI
``` 

* configure grub
```bash
grub-mkconfig -o /boot/grub/grub.cfg
```
- unmount and reboot

---
### install gui
* install graphics drivers
  * for virtualbox install guest additions as mentioned in the [wiki](https://wiki.archlinux.org/index.php/VirtualBox#Install_the_Guest_Additions)
* update system
```bash
pacman -Syu
```
* install xorg
```bash
pacman -S xorg
```
* install a desktop env
  - xfce: `pacman -S xfce4 xfce4-goodies`
  - kde: `sudo pacman -S plasma`
* install and setup login manager
```bash
pacman -S lxdm
systemctl enable lxdm.service
```



[home]: /dev-guide

