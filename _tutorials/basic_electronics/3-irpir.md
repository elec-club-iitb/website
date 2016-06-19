---
layout: default
title: Infrared - Passive Infrared Sensors
assets-dir: assets/tutorials/basic_electronics
sections:
---

This summers I took my first project ever in life. Meanwhile I came to
stop by a problem in which i had to detect a movement of a object
relative to its postion. After lots of googling and stuff , I found the
solution to this with the help of sensors , namely IR (infrared) PIR
(passive infra red sensors. Lets explore what they are !
 
#### IR Sensor

IR sensor consists of a LED and a photodiode. In the same branch as the
LED and photodiode there are two resistances with the larger one in the
branch with photodiode ( since, it is reverse biased , we demand greater
potential drop with small resistance ).The LED is a infrared LED which
emits infrared rays and those rays are received by the photodiode when
they are reflected by some surface. The circuit is assembled as
following :

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image11.png)

To check the circuit connect it with arduino:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image12.png)

Now keep your hand at some height above the LED . Meanwhile open the
serial monitor on arduino IDE and notice the values on it . Now slowly
start bringing your hand towards the LED and notice the increase in
value on the serial monitor. These values are a measure of amount of
reflection received by the photodiode. The closer your hand is , more is
the value on the serial monitor. Thus , this serves as a measure of
distance relative to the sensor. 
 
#### PIR sensor

The next task which i had to conquer was to detect movement . The best
way to find this out was a PIR sensor . Ever wonder you go into a room
or washroom it lights up by itself ? you know the reason? The answer
lies in PIR sensor . Let's see how this works. The basic function of a
PIR sensor is to detect a CHANGE in movement.

It is called passive because unlike the IR sensor it does not have
something which produces energy. In IR sensor IR sensor produces IR rays
which are detected by the photodiode but here there is no such source.
The IR rays which the PIR sensor collects is produced by the movement of
body near it . The circuit of the sensor is as follows :
![image]({{ site.baseurl }}/{{ page.assets-dir }}/image13.png)

The PIR sensor contains , inside it , a material called pyroelectric
material which produces current on receiving infrared waves. It contains
two sensor inside it which give output in opposing ways , thus , any
constant position isn’t detected whereas a movement is detected.

Thus if you keep your hand moving in front of it you will constantly
receive output but if you will stabilise it the output reading stops.
This principle is thus used in washrooms to light up light by itself .
