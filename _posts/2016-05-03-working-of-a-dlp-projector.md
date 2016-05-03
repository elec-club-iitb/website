---
layout: post
comments: true

title: Working of a Digital Light Processing Projector
excerpt: Describing the internals and working mechanism, as found in the How Things Work session
author: Pranav Sankhe
category: [Electronics, Optics]
tags: [Light Processing]

assets_dir: /assets/working-of-a-dlp-projector
---

The Robotics club IITB conducts weekly sessions named "How Things Work" where we tinker a device and explore how it works.

On a particular session we opened up a DLP projector.

Introduction
------------ 

Digital light processing is a display device based on optical micro-electro-mechanical technology. It was originally developed in 1987 by Dr.Larry Hornbeck of Texas Instruments. While the DLP imaging device was invented by Texas Instruments, the first DLP-based projector was introduced by Digital Projection Ltd in 1997.

<br>
![Components]({{ page.assets_dir }}/image_0.jpg)

<br>

Components
----------

![diagram]({{ page.assets_dir }}/image_1.jpg)

- **Lamp**
- **Condensing lens**
- **Colour Filter**
- **Shaping Lens**
- **DMD (digital micromirror device)**

Working of the Projector
-------

#### Lamp :
The lamp is generally a Xenon arch lamp which is ignited by a 5000 - 20,000 volt pulse from a current-regulating ballast to initiate an arc between two electrodes in the quartz tube.

#### Condensing Lens :
The light passes through the condensing lens which converges light on the colour wheel.

#### Colour Wheel :
Now let’s understand what this colour wheel is. You can see in the diagram given above that there is a chip (DMD) which sends light to the screen. All that the chip can do is either send or not send light – making it black-and-white only. To create colour images, projector manufacturers include a colour wheel which rotates in synchronization over the DLP chip. As it rotates between red, blue and green, the DLP chip sends the correct pattern of light. Because the images go on and off the screen so quickly, the brain puts them together into one full-colour image. It gives us a sense of a continuous motion picture going on, a phenomenon known as [Persistence].(https://en.wikipedia.org/wiki/Persistence_of_vision).

#### DMD Chip :
After passing through colour wheel light falls on the DMD chip .A DMD chip has on its surface several hundred thousand microscopic mirrors arranged in a rectangular array which correspond to the pixels in the image to be displayed. The mirrors can be individually rotated ±10-12°, to an on or off state. In the on state, light from the projector bulb is reflected into the lens making the pixel appear bright on the screen. In the off state, the light is directed elsewhere (usually onto a heatsink), making the pixel appear dark.

**PS**: The lens arrangement is made such that light from the lamp is passed through the condenser which focuses the beam on colour wheel and then the same beam has to be de-focussed in order to project it on the screen.

#### Lens 
Finally all the data (pixels) obtained from the DMD chip is projected on screen after passing the light through a diverging lens and thus we get the desired visual output on the screen.

For better understanding watch this [YouTube video](https://youtu.be/CI0cwk25CAs)

Working of the DMD chip  
------------------------------------

The working mechanisms of a DMD chip is a very interesting combination of application of mechanical, electrical and optical engineering.

<br>
![DMD chip]({{ page.assets_dir }}/image_2.jpg)

<br>
The DMD chip has millions of small mirrors. Before any of the mirrors in the DMD chip switch to their on or off positions, the chip will rapidly decode a bit-streamed image code that enters through the semiconductor. It then converts the data from interlaced to progressive, allowing the picture to fade in. Next, the chip sizes the picture to fit the screen and makes any necessary adjustments to the picture, including brightness, sharpness and colour quality. Finally, it relays all the information to the mirrors, completing the whole process in just 16 microseconds.

The mirrors are mounted on tiny mechanical hinges that enable them to tilt either toward the light source (ON) or away from it (OFF) up to +/- 12°, and as often as 5,000 times per second. When a mirror is switched on more than off, it creates a light gray pixel. Conversely, if a mirror is off more than on, the pixel will be a dark gray. Now combining this with the colour wheel, we can get all the colours we want.

**NOTE**: The lens arrangement is made such that light from the lamp is passed through the condenser which focuses the beam on colour wheel and then the same beam has to be de-focussed in order to project it on the screen. 
