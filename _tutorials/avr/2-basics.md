---
layout: default
title: Basics of AVR
assets-dir: assets/tutorials/avr
sections:
  - name: Pins
    href: pins
  - name: Registers
    href: registers
  - name: Using the Datasheet
    href: datasheet
---

### Pins <a name="pins"></a>

Confronting the Pin Diagram of ATMega16 at this stage can be a little
dangerous for your enthusiasm, so please proceed slowly.

Apart from the Power pins, all the pins on AVR can be configured as
Input or Output. These pins are present in four groups, or “Ports”,
namely PortA, PortB, PortC, PortD. Every pin is given a name, like
PA0,PB5 etc associated with its port. Besides every pin, its special
function is mentioned in brackets. For example, all pins of PORTA can be
used for ADC purpose apart from regular digital input/output. In this
way each pin has a special function. So, we have 8x4=32 normal I/O pins,
and 8 different pins meant for power supply, ADC voltage reference,
reset etc.

#### Pinout for ATmega16

![]({{ site.baseurl }}/{{ page.assets-dir }}/image20.png)

### Registers <a name="registers"></a>

The microcontrollers(uC) use Registers to store the data describing the
state(or mode) of certain operations(in most of our cases). For example,
there is a register to store the “state/mode” of pins in every port,
whether they are input or output pins. The Timer/Counter Control
Registers(TCCR1A/B) store information regarding timers and
counters(certain parameters etc). Similarly, there are many registers
and they store bytes that control most of the functions of the
microcontroller, so, the High/Low states of bits of those registers
enable/disable interrupts, ADC etc.

The first register we will see is the one I just described. It is called
the Data Direction Register(DDR). Hence DDRA is the register(8-bits of
data) showing Input/output states of the 8 pins in port A.

### Using the Datasheet <a name="datasheet"></a>

Though very intimidating to look at, the datasheet can provide you with
just the right information if you know how to use it, and if you know
that you have to use ‘IT’.

It is not at all necessary to read the complete datasheet, but there are
portions in it which are at our level of understanding and there is also
useful information which we will certainly need on our way.

It contains the code for every register, i.e. which bit of the register
stores data for what function and lot of other information which we will
use.

So keep the datasheet handy!

Get it here:
[http://www.atmel.com/devices/atmega32.aspx?tab=overview](http://www.atmel.com/devices/atmega32.aspx?tab=overview).
