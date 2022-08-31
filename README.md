# Surface Pro 4 & Surface Book (gen1) Hackintosh
This provides the ability to boot the Surface Pro 4 &amp; Surface Book (gen1) to macOS as a hackintosh. This may also work on the Surface Pro 5 &amp; 6 as well as newer Surface Book generations with some minor modifications. 

EFI supports macOS version 10.15.x through 12.5.1. Not all features may work on all versions of macOS. Beta software will not be officially supported until released.

OC version 0.8.3

Star or watch this github repository to be notified of updates coming soon. 

If you see anything that could be added or changed don't hesitate to sumbit a request.


## *** NOTICE ***
### Do not update kexts labeled as "custom" manually if they exist, instead wait for an update. 
### Touch is Technically supported in the posted EFI files however it requires [@Xiashangning's IPTSDaemon](https://github.com/Xiashangning/IPTSDaemon) in order to work. Please see the "Chapter 3" link below for instruction.
### I am still refining and cleaning up code though this EFI now has about 90% of Surface supported hardware working reliably. 

## Supported Surface Specifications:

| Model: | Pro 4 | Book (gen1) |
|---|----------|----------|
|CPU| 6th Gen: i3, i5, i7 | 6th Gen: i3, i5, i7|
|GPU| Iris 520 | Intel Iris 520 / Nvidia GPU (unsupported) |
|RAM| 4/8/16 GB | 4/8/16 GB |
|SSD| 128GB/256GB/512GB/1TBs NVME | 128GB/256GB/512GB/1TB NVME |
|WiFi| Unsupported | Unsupported |
|Batt| XX,000 mAH | XX,000 mAH |
|USB| 1x USB 3.0 | 2x USB 3.0 |




## Instruction Guides

### [Chapter 1) Quick Start Install](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/1-QuickStart.md)
### [Chapter 2) BootCamp Install](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/2-BootCamp.md)
### [Chapter 3) Quirks & Fixes - Includes how to set up the Touch Screen](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/3-quirks%26fixes.md)
### [Chapter 4) Additional Drivers](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/4-drivers.md)
### [Chapter 5) Booting Other OS's with OpenCore](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/5-OtherOS%26OC.md)
### [Chapter 6) Windows 11 Upgrade and/or Clean Install]


## What works 

- macOS Installer
- macOS Updates
- Fan
- USB
- Battery
- Trackpad
- TouchScreen (Requires IPTSDaemon, "Chapter 3")
- Keyboard (may not turn back on after opening keyboard from sleep)
- Audio
- Recovery
- Brightness Keys
- Power Management
- Sleep / Wake
- Power Button
- Volume Buttons




## What doesn't work

- SDcard (Untested)
- Wi-Fi (unsupported Chipset)
- Bluetooth (unsupported Chipset)
- FileVault
- Windows Boot Support From OpenCore Bootloader 
- Accelerometer (unsupported device)
- Keyboard fails after disconnect. Reboot resolves this issue
- Keyboard fails after sleep. Reboot resolves this issue
- Unreliable battery and AC power status. Working to resolve, likely SSDT/EC coding error. Shutdown and Cold boot seems to resolve this issue.


## Credits
Special thanks to [@Xiashangning](https://github.com/Xiashangning) for the excellent work done on his BigSurface kext<br>

