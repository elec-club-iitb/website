---
layout: default
title: Installation
assets-dir: /assets/tutorials/avr
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

![]({{ page.assets-dir }}/image29.jpg)
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

After installing ATMEL Studio 7, we need to install Drivers for the
programmer.
