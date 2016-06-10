---
layout: default
title:  Analogue-Digital Conversion
assets-dir: assets/tutorials/avr
---

Microcontrollers are capable of detecting binary signals i.e is the
button pressed or not?.

It interprets five volts as 1 and zero volts as 0. The world however is
not so simple and likes to use shades of gray. What if the signal is
2.72V? A 5V analog sensor may output 0.01V or 4.99V or anything
inbetween. Microcontrollers have a device built into them that allows us
to convert these voltages into values that we can use in a program to
make a decision.

The ADC reports a **ratiometric value**. This means that if the ADC is
a 10 bit ADC then it assumes 5V is 1023 and anything less than 5V will
be a ratio between 5V and 1023. Hence we can see analog to digital
conversions are dependant on the the reference voltage(which is by
default the system voltage).

In microcontrollers we have the flexibility of setting the reference
analog voltage for the ADC.There’s a pin available on the
microcontroller called as `AREF` which can be set to desired values
and you can have your customized ADC. For example in a 10 bit ADC if the
input voltage is equal to`AREF`then the ADC output is 1023. If the input
voltage is less than`AREF`voltage then the ADC output is somewhere
between 0 - 1023.

As you know, we need to set certain bits in some registers in order to
use ADC.

 - **ADC Multiplexer Selection Register (`ADMUX`):** For selecting the
reference voltage and the input channel.
 - **ADC Control and Status Register A (`ADCSRA`):** As the name says it has
the status of ADC and is also used for controlling it.
 - **ADC Data Register (`ADCL` and `ADCH`):** The final result of conversion is
here.

Here’s the logic flow for algorithm for using ADC:

 - Enable global interrupts
 - Selecting the correct clock frequency for maximum resolution ( 50 – 200
KHz)
 - Selecting the input pin
 - Set the ADC Interrupt Enable
 - Enabling the ADC
 - Start the ADC conversion

The descriptions of these registers, and the relevant tables for
deciding the bit combinations as given in the datasheet are shown below.

Based on the tables that follow, which bits are set to what value for
achieving what setting is mentioned in the code comments.

#### ADSCRA

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image12.png)

#### ADMUX

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image24.png)


#### Selecting Input Pin

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image10.png)


#### Setting ADC Prescaler

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image11.png)


#### Reference Voltage Selection

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image13.png)


#### Registers for storing the digital output (available in two formats)

The result, which is a 10-bit number is stored here, and thus 8 bits
together and two bits after/before the 8
bits (`ADLAR`=`0`/`1`).

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image34.png)


![image]({{ site.baseurl }}/{{ page.assets-dir }}/image25.png)


### Code

#### For `ADLAR=0`

{% highlight c %}
#include <avr/io.h>

#include <avr/interrupt.h>


int main(void)
{
    ADCSRA |= 1<<ADPS2; //ADC Prescaler = 16

    ADMUX |= (1<<REFS0) | (1<<REFS1); // Reference Voltage = 2.56V

    ADCSRA |= 1<<ADIE; // Enable ADC Interrupt

    ADCSRA |= 1<<ADEN; //Enable ADC

    sei();
    ADCSRA |= 1<<ADSC; //Start Conversion

    while (1){};
}

ISR(ADC_vect)
{
    uint8_t low_1 = ADCL; //a datatype of 8 bits, unsigned

    uint16_t output_ans = ADCH<<8 | low_1; //similar, but 16 bits, concatenated with upper two bits in ADLAR

    ADCSRA |= 1<<ADSC; //Start again

}

{% endhighlight %}

#### For `ADLAR=1`

{% highlight c %}
#include <avr/io.h>

#include <avr/interrupt.h>


int main(void)
{
    ADCSRA |= 1<<ADPS2;
    ADMUX |= (1<<REFS0) | (1<<REFS1) | ( 1<< ADLAR ) ; //ADLAR=1 this time

    ADCSRA |= 1<<ADIE;
    ADCSRA |= 1<<ADEN;

    sei( );
    ADCSRA |= 1<<ADSC;

    while (1){}
}

ISR(ADC_vect)
{
    uint8_t low_1 = ADCL;
    uint16_t output_ans = ADCH<<2 | low_1>>6; //merging is slightly different

    ADCSRA |= 1<<ADSC;
}
{% endhighlight %}
