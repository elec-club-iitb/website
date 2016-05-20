---
layout: default
title: Installation
assets-dir: /assets/tutorials/arduino
---

### Arduino comprises of 2 main parts:

1.  An **Integrated Development Environment(IDE)** for writing the Code
    you want the microcontroller to execute

2.  **Arduino Boards** that comprise of the enveloped microcontroller
    and other peripheral elements(like bootloader code,ICSP) to ensure
    proper functioning when used from a PC.

These 2 parts now primarily explain our method of using Arduino. We will
write the code(also called 'Sketch') on the IDE, setup the
hardware connections and upload the code onto the board to implement
it.

Arduino uses its own IDE for programming. The coding is similar to C,
except the deviations due to hardware of the board.

Download the Arduino IDE from:
[https://www.arduino.cc/en/Main/Software](https://www.arduino.cc/en/Main/Software).

**Note:** After installing the IDE from the Arduino website shown above,
you must select the board that you are using in Tools&gt;Board:Name.

The USB Port must also be selected appropriately but that will be taken
automatically in most cases.
After this, on connecting, and “Uploading”(Sketch&gt;Upload) any sample
code onto the board you should get a message verifying the amount of
space available on the board etc, and then a message showing successful
upload process.

Done, now the board is verified and ready to use with any custom code.

![]({{ page.assets-dir }}/image06.png)

![]({{ page.assets-dir }}/image07.png)

