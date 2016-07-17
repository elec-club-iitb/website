---
layout: default
title: GPIO Pins
assets-dir: assets/tutorials/r_pi
sections:
  - name: Configuring GPIO
    href: configure-gpio
  - name: Basics of GPIO Programming
    href: basics-gpio
---

### Configuring GPIO<a name="configure-gpio"></a>

For programming the GPIO pins we have to install the python 2 library RPi.GPIO. This module makes it simple to use the GPIO pins.
To install RPi.GPIO on your Raspberry Pi follow the following instructions.

In the LXTerminal of your R-Pi type the commands

    sudo apt-get update    


To install RPi.GPIO, you first need to install the Python Development toolkit that RPi.GPIO requires.

To do this enter the following command:

    sudo apt-get install python-dev

Then to install Rpi.GPIO itself type:

    sudo apt-get install python-rpi.gpio

**_Thats it! Now you are ready to program GPIO pins._**


### Basics of GPIO programming<a name="basics-gpio"></a>

To program GPIO pins you have to import RPi.GPIO library in your python program. To do this type the following line at the top of your program:

    import RPi.GPIO as GPIO

But before we start programming we have to set the numbering system of the pins. There are two types of numbering systems:

- BOARD
- BCM

The GPIO.BOARD option specifies that you are referring to the pins by the number of the pin the the plug - i.e the numbers printed on the board (e.g. P1) and in the middle of the diagrams below.

The GPIO.BCM option means that you are referring to the pins by the "Broadcom SOC channel" number, these are the numbers after "GPIO" in the green rectangles around the outside of the below diagrams:

In the image below the numbers in the middle correspond to BOARD numbering and those written outside refer to BCM numbering.
![Pin Numbering]({{ site.baseurl }}/{{ page.assets-dir }}/image_2.png)

Based on which numbering system is comfortable to you, which RPi shield your are using, what program you are using you can choose the numbering sytem which is most convinient to you.

To specify in your code which number-system is being used, use the **GPIO.setmode()** function. For example…

    GPIO.setmode(GPIO.BCM)

or 

	GPIO.setmode(GPIO.BOARD)

After specifying the numbering system we have to decide whether the pins that we are using will be input or output (just like in Arduino).

To do this we use **GPIO.setup()** function.
So if you want to setup pin 4 as output you would enter:

    GPIO.setup(4, GPIO.OUT)  

If you want to set pin 17 as input you would enter:

    GPIO.setup(17, GPIO.IN) 

So if you have set a particular pin as input you would like to read the value of that pin. To do this you would use the **GPIO.input()** function. 

For example if you would like to read the value of pin 17 you would enter:

    GPIO.input(17)

If you have setup a pin as output you would like to write a value to it. You would use the function **GPIO.output()** for it.

For example if you would like to set the value of pin 4 as HIGH you would enter:

    GPIO.output(4, GPIO.HIGH)

If you want to set it as low:

    GPIO.output(4, GPIO.LOW)

Now that you know how to set input and output of pins you are set to use any electronic devices along with the entire convinience of python.

One important thing to note that after the program is terminated either on its own or by a Keyboard Interrupt some of the pins which were high remain high after execution of the program. So in order to set everything to low we use the **GPIO.cleanup()** function.

Here is an example of simple LED blink program in which the usage of each and every function will become clear

{% highlight python %}
    import RPi.GPIO as GPIO
    import time
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(4, GPIO.OUT)
    
    try:
	    while True:
	    	GPIO.output(4, GPIO.HIGH)
	    	time.sleep(1)
	    	GPIO.output(4, GPIO.LOW)
	    	time.sleep(1)
	except KeyboardInterrupt:
		GPIO.cleanup()
{% endhighlight %}

When we execute this program with a led at pin 4 we would see the LED blinking at a rate of 1 second. This program would go on for ever unless we terminate it by CTRL-C which is a KeyBoardInterrupt which then initiates the GPIO.cleanup function.

With this much knowledge you should be able to interface any electronic equipment with R-Pi with one last precation :P. 

All the GPIO pins on R-pi are 3.3 volt logic level. So it is not safe to connect any device that gives or takes more than 3.3v as it might damage the GPIO pins. If you have to use any device that has a 5V supply such as HCSR04 ultrasonic sensors you should use a potential divider.

<hr>

**_Time to try some good projects with your R-pi. Happy tinkering!_**
