---
layout: post
comments: true

assets-dir: assets/pulse-detection-circuit
header-img: assets/pulse-detection-circuit/cover.jpg
title: Pulse Detection Circuit
excerpt: A simple and interesting application of Analog Electronics for Pulse Detection
author: Karan Taneja
category: [Projects]
tags: [Analog, Filters, Op-Amps]
---

In my ITSP, our aim was to make a polygraph machine for which we needed to monitor pulse of the examinee continuously over time. So here is what we did.

###Required Components:

IC LM324 (quad op-amp), 
IR LED, 
IR Sensor, 
A red LED, 
Resistors, 
Capacitors.

The technique used is called Photoplethysmography (PPG).
There is an IR LED whose light is reflected by the skin and received by an IR sensor. The changes in volume of blood over the time changes the amount of reflection which is detected by the IR sensor and it is amazing how we can filter and amplify to get the pulse in desired range.

###Basic Idea:

There are two types of unwanted voltage signals in the signal received from input: the constant DC voltage and the noise from surroundings. For removing the DC voltage, there is (passive) high pass RC filter with 0.7Hz as cut off frequency. To remove the noise, there is (active) low pass op-amp filter with 2.3Hz as cut off frequency and gain of nearly 100.

**Here is the final circuit I used:**

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image01.jpg)

###What modifications were needed in the basic model?

So in this module, there is, in net effect, a band pass filter that allows 0.7Hz to 2.3Hz and amplifies the signal by 100. But this provides neither sufficient filtering nor sufficient amplification. To further filter and amplify the signal, the signal from first module is fed to an exact duplicate module containing passive high pass filter and active low pass filter. 
After this, amplification is nearly 10,000 and signal has frequency component only between 0.7Hz and 2.3Hz.

**Further Amplification:**

One can now see a pulse with little effort but only with amplitude of around 0.5V. So the signal is further fed to an op-amp with gain of 10.
This output can be fed to a red LED (voltage controlled by resistor) or analog pin of a microcontroller or DSO to observe the pulse clearly.

**Have a look at the working video here:**
<iframe width="420" height="315" src="https://www.youtube.com/embed/kgVUFpzo6lg" frameborder="0" allowfullscreen></iframe>
On placing our finger on the IR LED/IR Sensor, we accurately get the pulse.

It is amazing how, using such a specific property of light reflection and fluctuating blood volumes, we can design a very basic electronic circuit to return our pulse!
