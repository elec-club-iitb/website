---
layout: default
title: The Iconic LED Blink
assets-dir: assets/tutorials/arduino
---

### The Connections(Mentioned in Setup)

![]({{ site.baseurl }}/{{ page.assets-dir }}/image10.png)

This being our first time, let us look into the setup closely. Please
read the comments of the code that follows to understand it thoroughly.

 - The code will be written in the IDE and burnt onto the board.
 - The board must be connected to an LED at pin numbered 10(digital).
 - It is clear that the board gets its power from the PC USB itself.
 - After the code is successfully uploaded(this will be shown on the PC
   screen, and can be inferred from the stoppage in flickering of the TX/RX
   LEDs, showing that the transfer is over) the LED must be turning on/off
   after 1 second every time.

We can remove the USB if there is external power connection, because
the code is stored in the memory

### Code

{% highlight c %}
int myLED=10; //variable declaration


// the setup function runs once when you press reset or power the board

void setup() {
    // initialize the pin connected to LED as an output.

    pinMode(myLED, OUTPUT);
    //pinMode(Number,Role), gives the pin with that number, the specified

    //role i.e. either it will act as an output pin or an input pin!

}

// the loop function runs over and over again forever

void loop() {
    digitalWrite(myLED, HIGH);
    //“writes” the pin at number “myLED” with HIGH state voltage(mostly 5V)

    //corresponding command for input pin is digitalRead

    delay(1000); // wait for a second

    digitalWrite(myLED, LOW); // turn the LED off by making the voltage LOW

    delay(1000); // wait for a second

}
{% endhighlight %}

### Hardware

The LED is connected to Pin no.10, which is a Digital Pin, hence can
have a high or a low voltage output/input. That’s all.

This is basically, **giving the desired output at the desired pin**.
Using this, you can do the same for analog pins(using
analogWrite/analogRead), and this will be used in everything you will
make further.

**Note:** It is a good practice to mention the hardware connections as
comments in the Sketch. Due to this, the implementation of actual
circuit connections becomes easy.
