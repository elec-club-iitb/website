---
layout: default
title: First Look
assets-dir: assets/tutorials/r_pi
sections:
---

### What does Raspberry Pi board look like?

The image given below is a top-view of Raspberry Pi 3 model B.
![Raspberry Pi 3]({{ site.baseurl }}/{{ page.assets-dir }}/image_0.png)

- The 40 pins shown at the top contain the Ground pins, I2C, SPI, GPIO pins, supply voltage pins.

- On the right, the top two structures are the USB ports and bottom one is the ethernet port.

- Comming down, we have the USB charging port on the left and the and the HDMI port next to it.

- On the left hand side we have a micro SD slot which acts as the hard drive of Raspberry Pi.


Now lets have a closer look at those 40 pins. Here is a pin diagram of those 40 pins.
![Raspberry Pi 3 Pin Diagram]({{ site.baseurl }}/{{ page.assets-dir }}/image_1.png)
We can see that out of the 40 pins

- 26 pins are GPIO pins
- 8 pins are Ground
- 2 pins are 5V supply
- 2 pins are 3.3V supply
- The other 2 pins are ID_SD and ID_SC used in I2C communication

The GPIO pins are used to connect to electronic devices and can be used as input or output. GPIO 2 and 3 can be used for I2C communication as they are the SDA and SCL pins respectively.

The 5V pins can be used to give 5V supply to any of the electronic devices. Same goes for 3.3V pins.
