## Chapter 3) Quirks & Fixes

### After installing macOS you may find several things that need to be resolved in order to have a true mac experience. Please use the following quirks & fixes to fix remaining issues. ***Touch Screen instruction can be found at number 6 below***

1. If you are missing OpenCore from your boot options boot your computer and press both the 'FN' AND 'F1' keys to load the boot list. Select the option to start the UEFI Shell. Once the shell loads type the following:
```
bcfg boot add 0 FS0:\EFI\OC\OpenCore.efi "OC"
```
Where "0" after add is where you assign boot order. "0" would be the first position. "OC" is the name of the boot option. You may name your boot option anything you want. "FS0" is the drive and partition where your OpenCore EFI files are located. If you are installing macOS to anything other than the built in SSD in the 1st partition EFI (standard configurtion) you will need to determine the correct path of your OpenCore Files. If you need more information regarding how to edit your UEFI boot options you can go [here](https://wiki.archlinux.org/index.php/Unified_Extensible_Firmware_Interface).


2. You can enable HiDPI mode which adds more resolution options to the list of available display resolutions.

Enter the following command in terminal post-installation then reboot:

```
sudo defaults write /Library/Preferences/com.apple.windowserver.plist DisplayResolutionEnabled -bool true
```


3. The trackpad is very sensitive. Additionally, macOS sets "Force Click and Haptic Feedback" enabled which causes unexpected behavior when clicking on the trackpad. You will need to turn off this function in order to have a trackpad that operates as expected. You can turn it off by going to:
``` 
System Preferences > Trackpad > Uncheck Force Click and Haptic Feedback
```

4. In order to get macOS Hibernation working you are required to change your hibernatemode and make other power management adjustments. Please open Terminal and enter the following commands.
```
sudo pmset -a hibernatemode 25;
sudo pmset autopoweroff 0
sudo pmset powernap 0
sudo pmset standby 0
sudo pmset proximitywake 0
sudo pmset tcpkeepalive 0
```

5. The Touch Screen is finaly usable on the Surface Pro 4-7, Surface Books, and the Surface Laptops. You must install a client that depends on "Brew", "FMT", and "INIH" being installed. In the future this may not be required but for now it works very well. Please use the following link whichincludes the client and all instructions. Issues related to the Touch Screen should be directed to @Xiashangning on his repository issue page.


      [Xiashangning IPTSDaemon](https://github.com/Xiashangning/IPTSDaemon)



