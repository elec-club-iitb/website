---
layout: default
title: Installation
assets-dir: assets/tutorials/r_pi
sections:
  - name: Linux
    href: linux
  - name: Windows
    href: windows
---
Depending on whether your laptop/pc has Linux or Windows, follow this steps to set 
your Raspberry Pi.

### For Linux<a name="linux"></a>

1- First download the image file of the operating system you want to install on 
your R-pi.

2- Open a linux terminal of your choice.

3- Connect your R-pi to laptop using the connector and insert the memory card in 
its slot.

4- Now unmount the memory card using command:

	sudo umount /dev/PORT_NAME

To see which port your sdcard belongs to, type:
	
	lsblk

5- To copy the contents of img file to sdcard, type:

	sudo dd if=PATH_TO_IMG_FILE of=PATH_TO_SD_CARD_MOUNT_POINT

It may take some time to copy the contents.

### For Windows<a name="windows"></a>

Time to configure your R-pi!