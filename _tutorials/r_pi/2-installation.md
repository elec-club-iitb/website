---
layout: default
title: Installation
assets-dir: assets/tutorials/r_pi
sections:
  - name: Linux
    href: linux
  - name: Windows
    href: windows
  - name: OSX
    href: osx
---
Depending on whether your laptop/pc has Linux or Windows, follow this steps to set 
your Raspberry Pi.

### For Linux<a name="linux"></a>

 1. First download the image file of the operating system you want to install on 
your R-pi.
 2. Open a linux terminal of your choice.
 3. Connect your R-pi to laptop using the connector and insert the memory card in 
its slot.
 4. Now unmount the memory card using command:

	`sudo umount /dev/PORT_NAME`

    To see which port your sdcard belongs to, type:

	`lsblk`

 5. To copy the contents of img file to sdcard, type:

	`sudo dd if=PATH_TO_IMG_FILE of=PATH_TO_SD_CARD_MOUNT_POINT`
 6. It may take some time to copy the contents. Once done, you are ready to configure your r-pi.


### For Windows<a name="windows"></a>

 1. First download the image file of the operating system you want to install on your R-pi.
 2. [Download Win32DiskImager](https://launchpad.net/win32-image-writer/+download) and unzip the application (.exe file) inside.
 3. Insert your SD card into your Windows PC using a card reader.
 4. Open Win32DiskImager.exe with Administrator privileges ( That is, right click on it and choose “Run as Administrator” ).
 5. If your SD card isn’t automatically detected by the application, click on the drop-down menu at the top right (labeled “Device”) and choose it from the list.
 6. In the image file section of the application, click the little folder icon and choose .img file of your operating system.
 7. Click the Write button and wait for Win32DiskImager to do its thing. When it finishes, you can safely eject your SD card and insert it into your Raspberry Pi.

### For OSX<a name="osx"></a>

 1. First download the image file of the operating system you want to install on your R-pi.
 2. [Download RPi-sd card builder](https://alltheware.wordpress.com/2012/12/11/easiest-way-sd-card-setup/) (be sure to pick the appropriate version for your installed version of OS X) and unzip the application.
 3. Insert your SD card into your Mac using a card reader.
 4. Open RPi-sd card builder. You’ll immediately be asked to choose a Raspbian image. Choose the .img file you downloaded earlier.
 5. You’ll be asked if your SD card is connected. Since we inserted it earlier, it is, so go ahead and click Continue. You’ll be presented with SD card options. If you only have one inserted, you won’t see anything else in the list and it’ll be checked. If not, just check only the card you want to use and click OK.
 6. Enter your administrator password and click OK.
You’ll be asked if the SD card was ejected. This is supposed to happen, as the application needs to unmount it so it can perform a direct copy. Double-check that your SD card is no longer available in the Finder. DO NOT remove it from your USB port. When you’re sure, click Continue.
 7. RPi-sd card builder finishes prepping your SD card, safely eject it and insert it into your Raspberry Pi unit.

<hr>
Time to configure your R-pi!
