# Linux Desktop Environment 
Usually running the latest Fedora, LXDE spin. I install the LXDE spin because its lightest, then I install i3, and if the computer is fast enough then I replace LXDM with SDDM.

#### Essentials
```
sudo dnf update
sudo dnf install -y i3 i3lock xcompmgr vim ranger firefox

mkdir src
```
Right-click on firefox toolbar in full screen and untick hide toolbar.

#### Luke's st terminal emulator
```
# Build dependencies
sudo dnf install fontconfig-devel libX11-devel libXft-devel

# clone and install
git clone https://github.com/LukeSmithxyz/st.git src/st
cd src/st
sudo make install
cd ~
```

#### Intel Brightness Controls
```
git clone https://github.com/ayoung012/intel_backlight_brightness.git src/intel_backlight_brightness
```
