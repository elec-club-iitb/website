---
layout: default
title: Pulse Width Modulation
assets-dir: /assets/tutorials/avr
---

As you might know, PWM is a technique to produce Analog-looking output
by digital means. We discussed the same in our Arduino Tutorial(LINK
HERE), and you can refer the theory of PWM here:
[https://www.arduino.cc/en/Tutorial/PWM](https://www.arduino.cc/en/Tutorial/PWM).

Its main use is to control the power supplied to inertial loads like
motors. An average value of current/voltage is supplied to the load by
turning the switch on off very fast, at a particular frequency.

While in arduino, we had the ready-made command `analogWrite()` for this,
here we will have to engineer the whole procedure :p.

We need to the following things in order to execute PWM in AVR:

1.  Know the PWM Enabled pins.
2.  Calculate the duty cycle, hence the time(within one cycle) when to
    turn the switch on/off.
3.  Set the correct bits(High/Low) for enabling PWM in
    the microcontroller.

Use the Datasheet to find various Modes in which we can use PWM(Waveform
Generator). We will use the **Fast PWM Mode**, with `ICR1` as Top-most
value.

![]({{ page.assets-dir }}/image35.png)

Another thing to be specified is here:

![]({{ page.assets-dir }}/image09.png)

We will choose the 4th option, i.e. `COM1A1` and `COM1A0` High, so `OCR1A` is
cleared when it reaches our count from reverse(the top). Let us see this
through code:

#### Code:

{% highlight c %}

#include <avr/io.h>


int main(void)}{

    DDRD |= 0xFF;
    TCCR1A |= 1<<WGM11 | 1<<COM1A1 | 1<<COM1A0;
    TCCR1B |= 1<<WGM13 | 1<<WGM12 | 1<<CS10; 
    //These two lines enabled Fast PWM, set the inverting mode and gave a prescaler of 1 (no prescaling)


    ICR1A = 24999; 
    // We assume the frequency we want, and divide it by F_CPU to get the count

    // In this case, we have set a frequency of 40 Hz


    OCR1A = ICR1A - t; // t is the time for which u want the pulse to be high

    // We are using the inverted mode, hence we assign from the end

    // t can be any value from 1 – 24998 :P


    while (1){}
}

{% endhighlight %}

Here, duty cycle of (t/24999)\*100% will be achieved because, in the
**inverting mode** `OC1A`/`B` is cleared at bottom, and set(High) on match.

