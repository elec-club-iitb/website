---
layout: default
title: Interfacing with Peripherals
sections:
  - name: LCD Display
    href: lcd
  - name: Serial Communication
    href: serial
  - name: Ultrasonic Sensors
    href: us-sensor
assets-dir: assets/tutorials/arduino
---

We often come across an interface between Arduino and various other
useful elements. We will understand how to interface an Arduino with
LCDs and the Computer(or in general any other unit, by Serial
Communication), using **Standard Libraries**, interfacing with different
sensors etc.

### LCD Display <a name="lcd"></a>

In order to teach the Arduino how to communicate with an LCD screen(send
the data we want for display) we use a library: “LiquidCrystal”. It is
provided by default in most cases. This library contains functions to
interface Arduino with an LCD, like declaring an LCD Screen of given
size, print given characters etc.

Please refer all the functions given on the right hand side of this
page:
[https://www.arduino.cc/en/Reference/LiquidCrystal](https://www.arduino.cc/en/Reference/LiquidCrystal).

After understanding the functions, you can move on to
examples (File&gt;Examples) and read them from the link given above or in
your IDE itself.

The important part in interfacing with LCDs is the **hardware
connection**:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image11.png)

The marked rectangle contains the names of the 16 pins that are usually
available on an LCD. From them, we connect 8 pins whose numbers are
marked in bold in the next column. They are connected to corresponding
pins in the Arduino as shown.

Data 4-5-6-7 are data pins which will carry information on What to
print. 5V and GND powers the LCD. Enable and R/S pins are also required
for enabling and operation selection.

**Note:** You can also connect Contrast pin, to a potentiometer output
between 5V and GND, so as to achieve variation in contrast.

### Serial Communication <a name="serial"></a>

This is a way of microcontrollers to communicate to other
microcontrollers or computers. In Arduino, serial communication with the
computer can be achieved easily through the USB channel used for
programming it.

The library used for this purpose is “SoftwareSerial”, and is there by
default.

Look up the functions of this library here:
[https://www.arduino.cc/en/Reference/SoftwareSerial](https://www.arduino.cc/en/Reference/SoftwareSerial).

Its examples will also be useful in understanding serial communication.

**Note:** We do not use the pins 0 and 1 for serial communication with
computer because that occurs through the USB cable itself.

### Ultrasonic Sensors <a name="us-sensor"></a>

This sensor measures the time duration between sending an ultrasonic
sound pulse and receiving back its reflection from the object in front
of it. From this time difference, it estimates the distance to the
object in front!

In order to use this without processing the data in the form in which it
comes from the sensor, we use a library developed for the purpose, named
“NewPing”.

**Note:** We can use it without the library(but with certain information
to convert the time duration of received HIGH pulse to distance, using
default library “ping”), by generating our own pulse and then reading
the reply on our own. But that is tedious.

Refer:
[http://playground.arduino.cc/Code/NewPing](http://playground.arduino.cc/Code/NewPing)
for the constructors,methods of this library.

#### Adding external libraries, Accessing examples

Download the library from
[http://playground.arduino.cc/Code/NewPing](http://playground.arduino.cc/Code/NewPing).
Unzip it. Place the folder NewPing in this location:
Arduino&gt;Libraries. Restart the Arduino IDE. You will now find this
library under Contributed Libraries section in: Sketch&gt;Include
Library.

You can access examples of this library(and all others) from
File&gt;Examples&gt;NewPing.

