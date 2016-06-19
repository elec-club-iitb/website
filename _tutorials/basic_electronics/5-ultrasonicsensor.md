---
layout: default
title: Ultrasonic Sensor
assets-dir: assets/tutorials/basic_electronics
sections:
---

It is more often than not that we require our model cars or bots or even basic circuits to measure distance of various objects in their surroundings. For this we require ultrasonic sensors. I am going to discuss the use of a ultrasonic sensor module HC-SR04.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image15.jpg)

It has a range of 5-400 cm. It contains two transducers- one ultrasonic transmitter and one receiver as well as a control circuit.

HC-SR04 has 4 pins:

-   5V vcc pin

-   Ground pin

-   Trig pin (to input an electronic pulse)

-   Echo pin (to output electronic signal when receiver receives the reflected ultrasonic pulse)

#### Working

We have to provide a 10uS electronic pulse to Trig pin due to which the transmitter sends a 8 cycle 40kHz ultra sound pulse. Now we calculate the time interval between the sending and receiving of the pulse.  
Since, we know the speed of sound in air and we now also know the time taken by the time to go to the object and come back, we can calculated the distance.  
So the distance of the object will be at half of our calculated distance.

#### The Demonstration

I did a small demonstration showing how to use ultrasonic sensor HC-SR04. You can find the datasheet [here](http://www.electroschematics.com/wp-content/uploads/2013/07/HCSR04-datasheet-version-1.pdf).

#### Connections of the circuit

Connections of the circuit are as shown in the below diagram:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image16.jpg)

Connected Vcc with 5v. Ground to 0v.
Trigpin and echopin are connected to pins 8 and 7 respectively of arduino.

Code is given below.
So, after the code is uploaded to arduino, press Ctrl + Shift + M to start the Serial Monitor.
You can see the distance in cm as well as inches that we are printing after converting the signal recieved from the sensor.   
 
#### Code:

{% highlight cpp %}
const int trigPin = 8;
const int echoPin = 7;

void setup() {
	Serial.begin(9600);
}

void loop()
{
	long duration, inches, cm;
	pinMode(trigPin, OUTPUT);
	digitalWrite(trigPin, LOW);		//sending

	delayMicroseconds(2);			//a

	digitalWrite(trigPin, HIGH);		//10uS

	delayMicroseconds(10);			//electronic

	digitalWrite(trigPin, LOW);		//pulse

	pinMode(echoPin, INPUT);
	duration = pulseIn(echoPin, HIGH);	//measure time taken by echo pin to go from low to high

	inches = Inches(duration);
	cm = Centimeters(duration);
	Serial.print(inches);
	Serial.print("in, ");
	Serial.print(cm);
  	Serial.print("cm");
  	Serial.println();
  	delay(100);
}

long Inches(long microseconds)			//convert time to inches

{
	return microseconds / 74 / 2;

}

long Centimeters(long microseconds)		//convert time to cm

{
	return microseconds / 29 / 2;
}
{% endhighlight %}