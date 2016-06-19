---
layout: default
title: Operational Amplifiers
assets-dir: assets/tutorials/basic_electronics
sections:
---

#### Operational Amplifiers

The Operational Amplifier, or OpAmp is an extremely versatile device. 
It can be used for anything from simple amplification of a signal to 
solving differential Equations. Here we will discuss mainly OpAmp as an 
amplifier.

The OpAmp is represented by the symbol-

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image00.jpg)

(The +Vss and –Vss pins are often not shown)

The +input is called the non-inverting terminal and the –input is called the inverting terminal.
The +Vss pin is generally connected to +15 V and the –Vss to -15 V, with respect to some ground.

The output and the input voltages are related by the expression

_Vout= A*(V<sub>+</sub>-V<sub>-</sub>)_

Where A is of the order of 10<sup>5</sup>. (This varies from OpAmp to OpAmp). **Another thing to 
note about the OpAmp is that it has very high input impedance and very low output impedance- 
meaning very little current can go into or out of the input pins, and a large current (usually 
a few hundred milliampere) can flow through the output pin.** More about why this is important later.

A simple amplifier can be built by grounding the inverting terminal and applying the signal to the 
Non-inverting terminal. However, this places some severe restrictions. For one, the output voltage,
 Vout cannot go above +Vss or below –Vss. Hence if the signal voltage exceeds around 150 microvolt, 
 the Output pin saturates to 15 V and the OpAmp no longer works as an amplifier. Moreover, the 
 amplification factor, A is not precisely known and the output voltage cannot be predicted with 
 certainty. This behaviour can be seen in the OpAmp characteristics. (Here, V<sub>d</sub> = V<sub>+</sub>
  - V<sub>-</sub> and Vcc = Vss).

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image01.gif)

(The region where V<sub>out</sub> varies in proportion to V<sub>d</sub> is called the linear region 
and beyond that it is called the saturation region – V<sub>out</sub> is said to have saturated to a 
constant voltage.)

To overcome this difficulty, we come up with another configuration.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image02.png)

The Output voltage is taken between Vout and ground.


Since no current flows into the V- terminal, 

V<sub>-</sub> = V<sub>out</sub> * R<sub>2</sub>/ (R<sub>2</sub>+R<sub>F</sub>).

The OpAmp equation becomes-
V<sub>out</sub> = A (V<sub>IN</sub> – V<sub>out</sub>*R<sub>2</sub>/ (R<sub>2</sub>+R<sub>F</sub>))
V<sub>out</sub> = A*V<sub>IN</sub>/ (1+A*R<sub>2</sub>/ (R<sub>2</sub>+R<sub>F</sub>))
V<sub>out</sub> ~ V<sub>in</sub>* (R<sub>2</sub>+R<sub>F</sub>)/R<sub>2</sub>,			(Since A is very large.)
Well, that was rather tedious, wasn’t it? Turns out there is an easier way. Let’s take a closer look at 
the OpAmp Equation.

_(V<sub>+</sub>-V<sub>-</sub>) = V<sub>out</sub>/A_

Well, what does this mean? It means that 

_“The OpAmp will do whatever it can to keep the potential at the input terminals the same”._

And all it can do is change the voltage at the output terminal. This is called a virtual short. The potential 
at the input terminals is the same, even though they are not connected. **This assumption is valid only when the 
OpAmp is working in the linear region.** In the saturation region, the potential at the input terminals need not 
be the same.

Let’s analyse the above circuit once again.
)
Current through Resistor R<sub>2</sub> would be V<sub>s</sub>/R<sub>2</sub>, and the same current flows through 
R<sub>F</sub>. Hence voltage at V<sub>out</sub> is V<sub>s</sub>/R<sub>2</sub> * (R<sub>2</sub>+R<sub>F</sub>). 
The amplification factor now becomes 1+R<sub>F</sub>/R<sub>2</sub>. The input signal can now be anything from a 
few millivolts to a few volts, and the precise value of A no longer matters. This is one configuration in which 
the OpAmp can be used as an amplifier. 

Another such configuration would be,

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image03.png)

The output voltage turns out to be
V<sub>out</sub> = - V<sub>in</sub> * R<sub>F</sub>/R<sub>in</sub>.
Note that the output is inverted with respect to the input signal. Hence this is the Inverting Amplifier 
Configuration. The previous configuration was called Non Inverting Mode.

Another use of an OpAmp is to provide a [‘buffer stage’](https://en.wikipedia.org/wiki/Buffer_amplifier). 
Normally, large currents cannot be drawn out of sensors, to be used for further processing. However, a reasonably 
large current can be drawn out of the OpAmp’s output terminal, when used in the following configuration.

![image]({{ site.baseurl }}/{{ page.assets-dir }}/image04.png)

(Do note that the current drawn by the external circuit comes through the output terminal of the OpAmp, and 
negligible current flows into any of the input pins) While in the expression for the amplification factor, 
only the ratio of resistances appear, care has to be taken to ensure that the resistance values to be used are 
in the range of 1k to 100k. For a voltage magnification of ten in inverting mode, the most preferred resistances 
should be 1.5k and 15k.

Another thing to note is that the circuit has to be as ‘clean’ as possible. If the circuit is made in a bread board, 
care has to be taken to ensure that the wires are as straight as possible, do not form loops, and are only as long 
as required. The stray inductance that may be formed otherwise may lead to severe distortion of the signal.

When connecting the resistor between the output and input pins( R<sub>F</sub> in this case) **only the inverting 
terminal** has to be used. This resistor is said to provide ‘Negative feedback’. (If the non-inverting terminal is used, 
the resulting positive feedback would lead to the OpAmp moving to the saturation region easily. However, in some cases, 
positive feedback is intentionally introduced to create instability. An astable multivibrator, where the output swings 
between positive and negative values without any user intervention, uses a positive feedback system.)

Some popular OpAmp ICs are the LM741 and the LM 324. The LM324 has four high quality OpAmps integrated into a single 
chip. You can find the datasheet of the LM324 [here](http://www.engineersgarage.com/sites/default/files/LM324.pdf). 
Take a look at the LM741 datasheet [here](http://www.ti.com/lit/ds/symlink/lm741.pdf). The datasheet provides additional 
information on the positions of the pins, supply voltage, maximum output current, blah, blah, blah…..in short, 
everything you need to get your circuit running. 