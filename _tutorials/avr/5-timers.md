---
layout: default
title: Timers and Counters
assets-dir: assets/tutorials/avr
sections:
  - name: Pre-scaling
    href: pre-scaling
  - name: Registers for controlling timers/counters
    href: timer-registers
  - name: LED Blink Code
    href: led-blink
---

The operations in any microcontroller are “**sequential**” at heart, and
so they all rely on clock-pulses. Hence the microcontrollers have
**internal clocks** that keep ticking at the given rate, irrespective of
anything else happening around them. They can also use **external**
clocks for this same purpose.

The timer and counter functions in the microcontroller simply **count in
sync** with the microcontroller clock. But the counter has limitations
due to its bit-capacity, i.e. a 8-bit counter can count only up to
256(or 0 to 255). So generally there is a 16-bit counter(65536 counts).
The counts are stored in the most important Timer/Counter Register,
`TCNT1`(16-bit, by default).

### Pre-scaling <a name="pre-scaling"></a>

Now compare the maximum count of a counter and the clock-ticks of a
microcontroller. Standard AVR Microcontrollers generally operate at 1
Mhz, that is 1,000,000 ticks per second, which is much more than 65536!

Hence, we need “prescaling” to increase the time-range of one cycle of
the counter(they start all over again after attaining the max value) to
a time comparable to our physical time domain(seconds). Prescaling is a
way for the counter to **skip some clock ticks**.

AVR Microcontrollers allow prescaling of: 8, 64, 256 and 1024.

So, by setting a “Prescaler” of 8, the counter counts only once for
every 8 ticks of the microcontroller clock, i.e. it runs at `F_CPU/8`
(`F_CPU` = Frequency of uC).

### Registers for controlling timers/counters <a name="timer-registers"></a>

The register `TCCR1A` and `TCCR1B` (Timer/Counter Control Registers) are used
for this. Please refer the datasheet for the description of the
registers.

![]({{ site.baseurl }}/{{ page.assets-dir }}/image21.png)

As you can see, all the 8-bits in the register are named.

(No need of knowing the function of all the 8 bits at this stage, the
relevant ones will be discussed next)

Let us understand this through our first code on ATMEL Studio.

### First code: LED Blink <a name="led-blink"></a>

Using the concepts learnt till now, we will write a program to toggle an
LED 7 times a second.

We will proceed in a way in which you will have to, when you are doing
it yourself. That is, we will use the Datasheet for reference instead of
direct steps given to you.

#### How to choose the correct prescaler?

The uC ticks 1,000,000 times a second. We want to toggle the LED 7 times
a second. So, we want the LED to toggle on every 142857th clock pulse.
Now, since 65536 (highest value of count) is smaller than 142857, we want
to set a prescaler such that “the highest count comes well after the
time when the original uC clock reaches 142857” (Read this line twice
:p). 8, 64 are suitable prescalers. Let us take 64.

#### Okay. I got the prescaler. Now how do I set that?

Search “prescaler” and after some experience you will know where to
look, among the numerous results you get for “prescaler” :p.

![]({{ site.baseurl }}/{{ page.assets-dir }}/image31.png)

In the relevant table you will find the bit combination of `CS12`/`11`/`10`
required to set the prescaler we want. In our case: `CS12`/`11`/`10`=`0`/`1`/`1`
respectively. So we set the bits accordingly, using concepts of bit
shifting and bit masking as discussed earlier.

(I told you about `TCCR1A`/`B` earlier, but ideally you first discover
`CS12`/`11`/`10` and then find out that these bits are present on `TCCR1B`,
going by the datasheet approach :p)

#### When to toggle the LED?

On every 142857th pulse of the uC clock. That is, when `TCNT1` is at the
142857/64 = 2232<sup>th</sup> count (for prescaler=64).

After this background have a look at the actual code required for this.

#### Code

{% highlight c %}
#include<avr/io.h>;

int main(){

    DDRB = 0b00000001; //Pin B0 becomes output pin

    PORTB = 0b00000000; //set B0 to Low

    TCCR1B |= 1&lt;&lt;CS10 | 1<<CS11; //set Prescaler

    while(1){
        if(TCNT1>2232){ //2232=65536/7

            TCNT1=0; //reset counter

            PORTB ^= 1<<PINB0; //toggle LED

        }
    }
}
{% endhighlight %}


