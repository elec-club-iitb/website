---
layout: default
title: Flex Sensor
assets-dir: assets/tutorials/basic_electronics
sections:
---

A flex sensor is a variable resistor whose resistance changes when it
bent. More the sensor is bend, more is the resistance.

The working principle: The black strip is a thin layer of
carbon/graphite (for flexibility). The light grey material is patterned
and segmented metal electrode. Deformation of the flex apparently
increases/decreases the amount of metal in contact with the carbon.

In this tutorial you will learn how to use a flex sensor. In the demo we
will control the brightness of a LED using a flex sensor.

Material you will need:

-   A flex sensor

-   Arduino UNO

-   Breadboard

-   10K Ω and 220Ω resistor

-   A LED

The circuit:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image14.jpg)

In the circuit, we have attached a fixed resistor of 10kΩ. Thus creating
a voltage divider arrangement. Now when the flex sensor is bent, the
resistance increases thus increasing the voltage at the junction. This
voltage is read by the Arduino and it is mapped to control the
brightness of the LED.

#### Code:

{% highlight c %}
	//Constants:

	const int ledPin = 3; //pin 3 has PWM function

	const int flexPin = A0; //pin A0 to read analog input

	//Variables:

	int value; //save analog value

	void setup(){

		pinMode(ledPin, OUTPUT); //Set pin 3 as 'output'

		Serial.begin(9600); //Begin serial communication

	}

	void loop(){

	value = analogRead(flexPin); //Read and save analog value potentiometer

	Serial.println(value); //Print value

	value = map(value, 700, 900, 0, 255);//Map value 0-1023 to 0-255 (PWM)

	analogWrite(ledPin, value); //Send PWM value to led

	delay(100); //Small delay

	}
{% endhighlight %}

We have read the voltage values using the A0 pin on the Arduino.

For controlling the LED we use Pin 3 which is a PWM pin.

For setting the range of the voltage read, you will have to see what the
voltage is when the sensor is not bent and when the sensor is bent to
its maximum value.

Flex sensors can be used to detect finger movements in a gesture control
robotic arm. Reading the voltage values can tell you how much the finger
is bent.
