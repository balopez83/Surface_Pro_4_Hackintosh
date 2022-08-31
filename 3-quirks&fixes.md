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


4. If the trackpad seems erratic you may want to try some of the following Terminal commands and see if it helps.
```
sudo defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool false
sudo defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool true
sudo defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -bool false

sudo defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true 
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true 
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

sudo defaults write com.apple.AppleMultitouchTrackpad Dragging -bool true 
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -bool true
```
Once entering any or all of the commands above, reboot your computer for the changes to take effect.


5. The Graphics in macOS Big Sur and newer is very intensive. If you would like to speed up the computer you can turn off some of the animations. The scripts below will allow you to reduce animations. You may use the second script to re-enable all animations. 
([Credit Barrykn](https://github.com/barrykn/big-sur-micropatcher) and johncaling40 for the scripts and other unknown contributors for the excellent work they have done to keep older macs running as well as possible)

How to use: Open Terminal and type in ```chmod +x``` and then drag and drop the script(s) below. Hit enter and enter your password if asked. After hitting enter drag and drop the scrip you would like to run and hit enter. If asked enter your password again and then reboot.

[Disable Animation](https://github.com/balopez83/One_Mix_Yoga_4_Hackintosh/blob/main/disable-animations.sh)

[Enable Animtion](https://github.com/balopez83/One_Mix_Yoga_4_Hackintosh/blob/main/reenable-animations.sh)

In addition to the scripts you can also 'Reduce Motion' & 'Reduce Transparency' to further speed things up. Go to 'System Preferences' > 'Accessibility' > 'Display' to make these additional changes. 

6. The Touch Screen is finaly usable on the Surface Pro 4-7, Surface Books, and the Surface Laptops. You must install a client that depends on "Brew", "FMT", and "INIH" being installed. In the future this may not be required but for now it works very well. Please use the following link whichincludes the client and all instructions. Issues related to the Touch Screen should be directed to @Xiashangning on his repository issue page.

```
https://github.com/Xiashangning/IPTSDaemon
```


