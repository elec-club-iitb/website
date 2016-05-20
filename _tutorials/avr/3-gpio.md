---
layout: default
title: Controlling Input and Output
assets-dir: /assets/tutorials/avr
sections:
  - name: Controlling Output
    href: controlling-output
  - name: Reading Input
    href: reading-input
---

As stated earlier, one of the registers called Data Direction Register
is used to control whether the pin acts as an Input pin or an Output
pin.

Thus we have **four** 8-bit registers:

**DDRA/B/C/D** for controlling 8 pins each, of **Ports A/B/C/D.**

The convention for setting the input/output bit is:

**1 - Output pin** i.e. Controlled by Microcontroller

**0 - Input pin** i.e. Controlled by external circuit

### Controlling the Output <a name="controlling-output"></a>

Now, for the **Output** Pins, in order to set them to the value we wish,
we use another register **PORTA/B/C/D**. Thus **PORTA** is a 8-bit
register, which stores the **8 bits** corresponding to each pin of Port
A(effectively only the Output pins) for whether to give it a **HIGH or
LOW** state.

Let us convey all this through a code snippet.

{% highlight c %}
DDRA = 0b00001101;

PORTA = 0b00000101;
{% endhighlight %}

**Note:** The order of pins is 76543210, i.e. Most Significant Bit
corresponds to pin 7

This tells the microcontroller that:

 - Line 1: Pins 0,2,3 of Port A should be declared as output pins and rest
as input.
 - Line 2: Pins 0,2 should should give HIGH(Vin) and 3 should give LOW(0)
output.

The bits corresponding to input pins of present in PORTA don’t matter,
that is PORTA is an Output only Register

### Reading the input <a name="reading-input"></a>

For the input values, there is a similar Input only Register,
**PINA/B/C/D.**

The values of inputs are stored onto this 8-bit register, and in the
code, we use this register with the comparison operator.

This statement:

{% highlight c %}
PINA == 0b11000010;
{% endhighlight %}

Checks if the inputs on pins 7,6,5,4 and 1 are High,High,Low,Low and
High respectively.
