# Xubuntu Setup
- Install Xubuntu
  - if installing in virtualbox in a mac, choose keyboard layout `US (MAcintosh)`
- After installation update the system
```bash
sudo apt update
sudo apt upgrade
```
- Install basics
```bash
sudo apt install vim wget curl git
```

# Virtualbox guest additions install
- Install dependencies
```bash
sudo apt install linux-headers-$(uname -r) build-essential dkms
```
- Insert the guest additions and run the install script in the cd
```bash
sudo ./VBoxLinuxAdditions.run
```

# xhdpi screen settings
- increse the font size
  - * Settings Manager -> Appearance -> Fonts -> DPI = 180 *
- fix the window manager
  - * Settings Manager -> Window Manager -> Style = default-xhdpi *


