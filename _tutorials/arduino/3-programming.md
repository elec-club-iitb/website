---
layout: default
title: Programming the Arduino
assets-dir: assets/tutorials/arduino
---

Please Refer:
[https://www.arduino.cc/en/Tutorial/Sketch](https://www.arduino.cc/en/Tutorial/Sketch)
for basic functions and guidlines on Sketching.

![]({{ site.baseurl }}/{{ page.assets-dir }}/image01.png)

The program is **written** in the IDE, **Verified**(compiled) and
**Uploaded**(burnt) to the board.(Writing the program into the memory on
the board so that it executes this program after disconnecting from PC)

We shall see the use of the programming language through the examples
that follow later.

### Common Usage Examples:

Make Sure you understand the function behind each line of the code
given below

{% highlight c %}
int pin=13
/* variable declaration, refers to pin Numbered 13 */
{% endhighlight %}
{% highlight c %}
setup()
/* code in this definition runs only once and acts as a setup as the name suggests */
{% endhighlight %}
{% highlight c %}
loop()
/* code here runs repeatedly */
{% endhighlight %}
{% highlight c %}
pinMode(pin,INPUT)
/* sets pin numbered “pin” to an INPUT pin */
{% endhighlight %}
{% highlight c %}
digitalWrite(pin, HIGH)
/* gives High(Vin) voltage output at pin(provided it is set as Output) */
{% endhighlight %}
{% highlight c %}
digitalRead(pin)
/*  analogous to digitalWrite, but for INPUT pins */
{% endhighlight %}
{% highlight c %}
analogWrite(pin,Value)
/* a number between 0 and 255(0 to 100% duty cycle)(use on PWM enabled pins \~) */
{% endhighlight %}
{% highlight c %}
analogRead(pin)
/* returns Digital Converted input as number between 0 and 1023 */
{% endhighlight %}
{% highlight c %}
delay(t)
/* very useful in introducing delay, of t milliseconds */
{% endhighlight %}

For details you can look up the concerned command on the Arduino
website. It has a “References” section that has just these things!
