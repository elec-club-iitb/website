---
layout: default
title: First Look
sections:
  - name: Digital Pins
    href: digital-pins
  - name: On-Board Pins and Switches
    href: on-board
  - name: Analog in
    href: analog-in
  - name: Gnd and Vin pins
    href: power-pins
  - name: Power Connector
    href: power-connector
  - name: TX and RX LEDs
    href: tx-rx
  - name: USB Port
    href: usb
assets-dir: /assets/tutorials/arduino
---

Arduino offers different boards, with varying microcontroller
capability([memory](https://www.arduino.cc/en/Tutorial/Memory) and
clock speed) and number of input/output pins.

Let us examine one of the simple models, Genuino.

![]({{ page.assets-dir }}/image08.png)

The parts, as labelled in the figure, are explained here:

#### Digital pins <a name="digital-pins"></a>

Let us get a decent idea about the variety of pins
available on any Arduino. There are pins which can be used in different
modes. As you can see, pins numbered 2-13 are Digital Input/Output
pins(0,1 are serial in/out). That is, they are capable of giving/taking
Digital output/input. But, the ones which are PWM Enabled (shown by a
\~) can also be used as Analog Outputs.

Here, Input/Output is the “Mode” (specified by pinMode()) in which the
pin is used. Use these pins with digitalRead(), digitalWrite(), and
analogWrite() commands according to the mode. analogWrite() works only
on the pins with the PWM symbol.

Note that of the Mode is not explicitly specified using pinMode(), they
are set to Input.

Also, most of the Analog Pins(mentioned at point 5), can be used as
Digital Pins.

Please refer:
[https://www.arduino.cc/en/Tutorial/DigitalPins](https://www.arduino.cc/en/Tutorial/DigitalPins)
for details.

#### On-board LEDs and Switches <a name="on-board"></a>

**Pin 13 LED:** The only actuator built-in to the board. Useful for
debugging, since the LED is in-built and hence reliable in terms of
connections.

**Power LED:** Indicates that the board is receiving power. Useful
for debugging.

**Reset button:** Resets the ATmega microcontroller.


#### Analog in <a name="analog-in"></a>

These pins, numbered A0 to A5 can be used for Analog
inputs/outputs(ADC etc) with analogRead(), analogWrite() and also
digitalWrite() as General Purpose Input/Output pins.

Please refer:
[https://www.arduino.cc/en/Tutorial/AnalogInputPins](https://www.arduino.cc/en/Tutorial/AnalogInputPins)
for details.

#### Gnd and Vin pins <a name="power-pins"></a>

Vin is the input voltage to the board when it's
using an external power source (as opposed to 5 volts from the USB
connection or other regulated power source from the power jack). You can
supply voltage through this pin(from external circuitry), or, if
supplying voltage via the power jack, access it through this pin.

#### Power connector <a name="power-connector"></a>

This is how you power the board when it’s not
plugged into a USB port for power. Can accept voltages between 7-12V(But
the voltage is regulated to a maximum of 5V)

(You can read the “Power” section of
[https://www.arduino.cc/en/main/arduinoBoardUno](https://www.arduino.cc/en/main/arduinoBoardUno)
for in-depth understanding of power pins, and the voltage regulator.)

#### TX and RX LEDs <a name="tx-rx"></a>

These LEDs indicate communication(send/receive)
between the board and the computer. Expect them to flicker rapidly
during sketch upload as well as during serial communication. Useful for
debugging.

#### USB port <a name="usb"></a>

Used for powering the board, and most importantly,
uploading your sketches to the board. It is also used for communicating
with the sketch (via Serial. println() etc.).

An understanding of how we will use these pins, and what functions can
they perform for us will be gained through the examples that follow
later.

**Details:** If you are interested, you may refer the **Technical Specs,
Power, Input/Output(Special Pins) and Communication** sections of this
page:
[https://www.arduino.cc/en/Main/ArduinoBoardUno](https://www.arduino.cc/en/Main/ArduinoBoardUno).

I would advise you to look into the details given here atleast once.
Read them after you get familiar with these things, if not right now.
