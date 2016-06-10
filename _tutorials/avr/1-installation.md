---
layout: default
title: Installation
assets-dir: assets/tutorials/avr
sections:
  - name: Download Atmel Studio
    href: atmel-studio
  - name: Install Drivers
    href: drivers
---

In order to write the code for AVR, and to burn it to the
microcontroller, we use the software provided by ATMEL: ATMEL Studio.

We also need something that connects the microcontroller and the
computer (by USB). This was very simple in case of Arduino because among
its peripherals, there was an in-built USB slot. Here we will use a
“**Development Board**”.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image29.jpg)

In the picture above, observe 2 main things:

 1. **The Programmer**, which is plugged in the computer USB slot: It is
used for the development board-to-USB Slot interface.
 2. **The Development Board:** Provides an interface to connect pins with
Jumpers to further circuitry and with the input of the programmer.

After this let us move on to installation of ATMEL Studio.

#### <a name="atmel-studio"></a>Download Atmel Studio

Get the software setup here:
[http://www.atmel.com/tools/ATMELSTUDIO.aspx](http://www.atmel.com/tools/ATMELSTUDIO.aspx).

#### <a name="drivers"></a>Install Drivers

After installing Atmel Studio 7, we need to install Drivers for the
programmer. Refer to the following videos for the procedure.

For setting up **avrdude**: [Microcontroller Programming Environment WinAVR Install](https://newbiehack.com/MicrocontrollerProgrammingEnvironmentWinAVRInstall.aspx)

And for configuring the **USBasp tool**: [Microcontroller Installing Atmel Studio](https://newbiehack.com/MicrocontrollersInstallingAtmelStudio6.aspx)

Atmel Studio has the environment for writing and compiling the code for AVR Microcontrollers, but in order to program the microcontroller with a programmer (the chip with an LED at the USB slot in the above picture), we  need to configure the software with a new tool. For this configuration, we must set up **avrdude** (Video 1).

Now, for configuring the **USBasp tool** we need to set certain things since it is different than the normal USBs which we use at the ports. For this we need to configure the new external programming tool as specified in Video 2.

These two steps are very important and it will not be possible to write the code to the AVR Microcontroller properly without getting these configurations right. Refer the given links properly and if you have any doubts you can ask on the [Electronics Club Gitter Rooms](https://gitter.im/elec-club-iitb/avr-arduino).
