---
layout: default
title: Multiplexer - Demultiplexer
assets-dir: assets/tutorials/basic_electronics
sections:
---

#### Multiplexer

Multiplexing is the generic term used to describe the operation of sending one or more analog or digital signals over a common transmission line at different times or speeds and as such, the device we use to do just that is called a Multiplexer. The following is a black-box view of the common digital multiplexer, or MUX (as we fondly call it), which has N selection lines, 2<sup>N</sup>, input lines, and a single output line.

The 4-to-1 channel multiplexer that is depicted in the adjoining diagram, selects an input line corresponding to the input provided to the selection bits. In this way, a MUX somehow acts like an equivalent of a mechanical multi-way switch.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image05.jpg)
![image]({{ site.baseurl }}/{{ page.assets-dir }}/image06.gif)

From a coder’s perspective, a multiplexer could be seen as an analogue of the switch-case statement, with the case values represented by the different input values, say I0, I1, I2, and I3, while the value being tested under switch, represented by the binary number S1S0. 

Going a little into the logic aspect of it, the multiplexer’s (4:1) truth table looks like the following:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image07.png)

So when does one use a multiplexer?
In general, a multiplexer helps transmit multiple data using a single line. For example, a multiplexer is used to increase the efficiency of the communication system by allowing the transmission of data such as audio & video data from different channels via cables and single lines. Another similar application is in linking computer memory to various I/O devices, where multiplexers help reduce number of connecting copper wires.


#### Demultiplexer

The data distributor, known more commonly as a Demultiplexer or “Demux” for short, is the exact opposite of the Multiplexer. The demultiplexer takes one single input data line and then switches it to any one of a number of individual output lines one at a time. The demultiplexer converts a serial data signal at the input to a parallel data.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image08.png)

The function of the Demultiplexer is to switch one common data input line to any one of the 4 output data lines A to D in our example above. As with the multiplexer the individual solid state switches are selected by the binary input address code on the output select pins “a” and “b” as shown.

Truth table for demultiplexer:

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image09.png)

A typical application of the demultiplexer is to control multiple circuit lines using few selection lines.
Demultiplexers are used in combination with multiplexers communication system to carry out the process of data transmission. Demultiplexer are also used in serial to parallel conversion.  In this technique, serial data is given as an input to the De-multiplexer at a regular interval, and a counter is attached to the demultiplexer at the control input to detect the data signal at the output of the demultiplexer.

#### The Demonstration

We did a small demonstration to see the working of a De-multiplexer in action. We made use of an IC called SN7442A. (You can find the Datasheet at [here](http://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=sn54ls42&fileType=pdf).)

Let’s look at the pin configuration of the IC.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image10.png)

#### Connections of the circuit

Connected Vcc with 5v. Ground to 0v (duh!)
As we see in the datasheet (do have a  look), D is the most significant input bit and A the least. Since, we wanted to do a quick demo, we keep C and D connected to ground (Low always). So now, we can play with only input pins A and B.  

Looking at the output table of the circuit


We see that toggling A,B input pins , we can control pins 0, 1, 2, 3 and hence, we connected 4 LEDs to it. To display the output.
A,B were made to toggle from 5v to 0v and vice versa by connecting a button each between inputs and 5v. Also, connecting a resistor between the input and ground does the job. Think about it! 

So now, on clicking the 2 buttons separately and together, we see the expected LEDs going Low according to the output table!      
 

