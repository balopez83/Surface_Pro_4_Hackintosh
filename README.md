# Surface Pro 4 and Surface Book (gen1) Hackintosh
This provides the ability to boot the Surface Pro 4 &amp; Surface Book (gen1) to macOS as a hackintosh.  

EFI supports macOS version 10.15.X through 12.X. While Ventura will work it is not officially supported as a required kext has not yet been updated providing support. Not all features may work on all versions of macOS. Beta software will not be officially supported until released.

Star or watch this github repository to be notified of updates coming soon. 

If you see anything that could be added or changed don't hesitate to sumbit a request.


## *** NOTICE ***
- ### Touch is Technically supported in the posted EFI files however it requires [@Xiashangning's IPTSDaemon](https://github.com/Xiashangning/IPTSDaemon) in order to work. Please see the "Chapter 3" link below for instruction.
- ### BigSurface.kext is not currently supporting macOS Ventura. If you upgrade to Ventura you will experience Kernel Panics on every shutdown/reboot. Please stay on macOS Monterey or lower until support for Ventura is added by @Xiashangning in the BigSurface.kext
 

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
### [Chapter 7) Enable Secure Boot with OpenCore/macOS](https://github.com/balopez83/Surface-Pro-4-and-Surface-Book-Hackintosh/blob/main/7-SecureBootOn.md)


## What works 

- macOS Installer
- macOS Updates
- Fan
- USB
- Battery
- Dual Battery Fully Supported w/hotplug (Shows as one combined battery - Surface Book)
- Trackpad
- TouchScreen (Requires IPTSDaemon, "Chapter 3")
- Keyboard
- Audio
- Recovery
- Brightness Keys
- Power Management
- Sleep / Wake
- Power Button
- Volume Buttons
- Dual Boot with Linux
- UEFI Secure Boot ON
- SD card
- FileVault
- Dual Boot with Windows
- Dual Boot with Linux
- Keyboard Hot Plug
- Surface Dock





## What doesn't work

- Wi-Fi (unsupported Chipset)
- Bluetooth (unsupported Chipset)
- Accelerometer (unsupported device)
- Cameras (unsupported device)
- S3 Deep Sleep




## Credits
Special thanks to [@Xiashangning](https://github.com/Xiashangning) for the excellent work done on his BigSurface kext as well as [@billabongbruno](https://github.com/billabongbruno) for other Surface specific enhancements<br>
