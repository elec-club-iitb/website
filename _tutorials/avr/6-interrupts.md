---
layout: default
title: Theory of Interrupts
assets-dir: /assets/tutorials/avr
sections:
  - name: Timer triggered interrupt
    href: timer-interrupt
---

Interrupts are events that have the highest priority for the
microcontroller(it pays immediate attention to them). That is, when an
interrupt event occurs, the microcontroller Pauses its current task and
attends to the interrupt. This is done by executing a routine called
**Interrupt Service Routine(ISR).** At the end of the ISR, the
microcontroller returns to the task it had paused and continues
normally. So ISR or Interrupt Handler is the piece of code that must be
executed when an interrupt is triggered.

Now, for enabling the execution of interrupts, we need to give
appropriate values to certain bits, in certain specific registers. One
compulsory bit is the **Global Interrupt Enable bit**. That is, when an
interrupt flag is raised, the global interrupt bit must be High, in
order to forward that interrupt request. So it is like an And-filter:
“**Request** an interrupt if that specific **interrupt flag** is raised
**AND** the **global interrupt** is enabled.”

> A “flag” is like the abstract-physical representation of a bit for an
> event :p

Apart from the global interrupt enable bit, we have interrupt enabling
bits for all the ways in which interrupts can be triggered. They can be
triggered through the following ways:

 - ADC
 - Timer matching a given count
 - Pin being High/Low
 - Serial Communication

![]({{ page.assets-dir }}/image33.jpg)

### Timer triggered interrupt <a name="timer-interrupt"></a>

Now let us apply our theory in writing a code for triggering an
interrupt when the timer reaches a certain count.

We still need to know about the specific bits to be set for triggering
an interrupt by comparison with timer. This is done by **Clear Timer on
Compare Mode**.

![]({{ page.assets-dir }}/image15.png)

See option 4. This mode clears(resets) the timer on matching with a
given value.

We also need to enable the time-match-triggered interrupt.

![]({{ page.assets-dir }}/image08.png)

We will set `OCIE1A` bit High, thus enabling it. So, when the **timer
reaches the value** specified(stored) in `OCR1A`, timer will be
**cleared** (“Clear on Compare”) and the Output Compare Match Interrupt
Enable becomes high (Interrupt flag raised).

Once the and interrupt is requested(global interrupt must be enabled),
uC will go into the ISR, so we will specify the code for the ISR also.

#### Code

{% highlight c %}
#include<avr/io.h>

#include<avr/interrupt.h>


int main(){
    sei(); //enable global interrupt

    DDRB |= 1<<PINB0;
    TCCR1B |= 1<<CS10 | 1<<CS11 | 1<<WGM12; //set prescaler, and enable CTC

    TIMSK |= 1<<OCIE1A; //Timer1 Output Compare A Match interrupt enabled

    OCR1A = 15624; //Value at which CTC

    while(1){}
}

ISR(TIMER1_COMPA_vect){ //Checks argument

    PORTB ^= 1<<PINB0;
}

{% endhighlight %}
