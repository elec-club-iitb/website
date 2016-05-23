---
layout: default
title: Functionalities in Arduino
sections:
  - name: Pulse Width Modulation
    href: pwm
  - name: Analogue-Digital Conversion
    href: adc
assets-dir: assets/tutorials/arduino
---

### Pulse Width Modulation <a name="pwm">

Pulse Width Modulation is the technique of producing Analog-type results
by Digital means, and essentially relies on very fast toggling of the
digital output between high and low at appropriate time intervals.

Refer to the theory of PWM here:
[https://www.arduino.cc/en/Tutorial/PWM](https://www.arduino.cc/en/Tutorial/PWM)

**I strongly advise you to see the above** **link** to get a feel of
what PWM is before proceeding.

The PWM Enabled pins on Arduino(3,5,6,9,10,11) can be used as analog
outputs with a resolution of 0-255. This can be interfaced with ADC.

Using this functionality, Arduino essentially eliminates the involvement
of duty cycle calculation and digital pin manipulation, because of the
inbuilt functions analogWrite. This is the power of Arduino! Functions
are already inbuilt for you. In other microcontrollers, you need to
literally write such functions.

**Note:** The PWM Enabled pins do NOT give Analog output, but they give
the Pulse Width Modulated Rectangular waves as outputs.(Read Link)

#### Code

{% highlight c %}
int ledPin = 9; // LED connected to digital pin 9

void setup() {
// nothing happens in setup

}

void loop() {
    // fade in from min to max in increments of 5 points:

    for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 5) {
    // sets the value (range from 0 to 255):

    analogWrite(ledPin, fadeValue);

    // wait for 30 milliseconds to see the dimming effect

    delay(30);

    }
}

{% endhighlight %}

**Note:** Delays are very important while coding microcontrollers. Their
typical computing speeds lie in ranges of 1MHz, and hence execution of
any average statement in the code would take approximately 1μs.

If the above code would be executed without the delay(30) statement, out
human eye wouldn't be able to perceive the changes so fast and would see
a constant average brightness.

Also, in many Analog operations, it is advisable to wait for a short
period of time in order to avoid noise in the system.

**Hardware:** An LED is connected between pin numbered 9 and ground.

### Analogue-Digital Conversion <a name="adc"></a>

Arduino highly simplifies Analog-to-Digital Conversion. It is used as
follows:

Suppose we have Analog Input at a certain pin, say A0.

Executing analogRead(A0), would return a number from 0-1023 (default,
10-bit resolution), representing the Digital Equivalent of the given
Analog Input, with 5V as reference(1023).

Can you guess where this function is required?

Well, as an example, it is required to capture sensor values which can
have any value between 0 to 5V and we want the exact value. Try thinking
of more such examples.

Once again Arduino simplifies matters for you, because the actual
theoretical procedure of ADC is different altogether. Instead, that
comes as an inbuilt function and it directly returns the corresponding
value with the given resolution and reference voltage.

**Note:** Though not often required but we can change the reference
value, by supplying the reference voltage at the AREF pin, and using the
analogReference() command.

In AVR microcontrollers, executing ADC requires something called
interrupts. As you might have seen, all this is not explicitly required
in Arduino. Again displaying the ease of using Arduino.

**Note:** Uno is also provided with special interrupt pins, mentioned in
the link given in “Details” section.(Do not worry about “interrupts”
right now, if you don’t know what is is)
