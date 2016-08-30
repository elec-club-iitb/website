---
layout: post
comments: true

title: The Tech Behind Games
excerpt: How today's mobile games use the various sensors to provide the ultimate gaming experience!
author: Shrvan Amlekar
category: [Informative]
tags: [Sensors, Augmented Reality]

assets-dir: assets/the-tech-behind-games
header-img: "assets/the-tech-behind-games/cover.jpg"
---

Gaming is one of the most popular form of entertainment (and probably will hold this position forever).
Also, mobile gaming is on a boom now a days. Almost every good game needs its controls to be intuitive and flexible. 
There has been a lot of research and upgradations in the field of motion sensing.
Some of the major breakthroughs are Gyroscope, Accelerometer, Magnetometer, etc. Let’s know about these in detail.

### Motion Sensing

One key element of interaction is local motion of the phone, such as linear acceleration, rotational velocity, etc.

![accel_gyro]({{ site.baseurl }}/{{ page.assets-dir }}/accel_gyro.jpg)

 - **Accelerometer**

   Have you ever wondered how your phone manages to know what direction you are holding it?
   It uses a device called accelerometer. An accelerometer is a device that measures linear acceleration.
   As it has to measure acceleration, force should come in picture somewhere.
   It measures force using a loaded capacitor with one plate attached to a spring.
   A simplistic model is where one plate is fixed, and the other has the mass of the load attached to a spring.
   This spring will change its amount of compression (and hence distance between plates) based on the force
   applied to the capacitor. This change in distance leads to a change in capacitance
   , which is measured and used to determine the acceleration of the device. Interesting isn’t it!
   One capacitor is used for each axis X, Y, Z and hence we can get the acceleration
   vector in 3D.

![capacitor]({{ site.baseurl }}/{{ page.assets-dir }}/capacitor_diagram.jpg)

 - **Gyroscope** 

   It is a device used to measure the angular velocity.
   It basically consists a wheel or disc mounted so that it can spin rapidly
   about an axis which itself is free to alter in any direction.
   Also it is connected to different capacitors at its edges such that when the
   device rotates and the disc moves there is a subtle change in the capacitance
   (similar model like the accelerometer) which helps us to determine the
   magnitude of the angular acceleration of the device.
   Also, more than one capacitors are used so that we get an idea of the
   direction in which the device is rotated.
   One important observation here is that setup based on torsion strain cannot
   be used as we have to measure angular velocity and not the angular acceleration.

 - **Magnetometer**

   In the very basic sense a magnetormeter is a compass. 
   It provides mobile phones with a orientation in relation to the Earth’s magnetic field.
   There are two types of magnetometers, which use Hall-effect and others which
   use Magneto-resistive effects, the former are used on a large scale.
   In these kinds of magnetometers, a conductive plate is connected to a
   complete circuit so that electrons flow through it is continuous.
   When the device comes in the influence of a magnetic field, there is a deflection
   in the path of the electrons due to which a potential difference is created
   across the edges of the plate perpendicular to the flow of current.
   By measuring this potential difference the magnetic field vector around is determined.

### GPS (Global Positioning System)

The United States began the GPS project in 1973 to overcome the limitations of
previous navigation systems. Later they thought that everyone should use this technology.
The purpose was providing geographical position in all weather conditions anywhere on or near Earth.

#### Working

This comprises of a network of 27 satellites (of which 3 are for backup)
which have a transmitter attached (they do not have a receiver).
They basically transmit data in the form of electromagnetic waves.
The transmitted data consists of three chunks:
 
 - A pre-determined random string
 - The satellite's current orbital position and time of transmission
 - health data for monitoring

The receiver also records when it recieved this transmission.
Thus we know the time of transmitting and using this info we can calculate the
distance between us and the satellite as we also know the time we received the wave,
and hence time it took to travel the distance. The speed of the wave is equal
to the speed of light because it is an electromagnetic wave.

![gps]({{ site.baseurl }}/{{ page.assets-dir }}/gps.jpg)

Using this distance measurement from 3 different satellites and their orbital position
we get three spheres as loci of our position. The earth is the fourth sphere. Using coordinate geometry
we can find the intersection of these spheres to give one single point in 3D space
which will be our location.

So 3 satellites are enough to pinpoint our location, but to increase the accuracy 4-5 satellites are generally used.

### Augmented Reality

As the name suggests it basically enhances the real world by adding the digital
graphics to real world. This is done by displaying the real world and additional
"augmented" data together on one screen.

![AR]({{ site.baseurl }}/{{ page.assets-dir }}/ar.jpg)

This has varied applications like visual art, greeting cards, video games
(any fans of Pokemon Go or Ingress here!)

In this, we basically take an image, detect a pattern and attach an object to it.
Let me explain by giving an example, while playing pokemon go suppose a wild magikarp appears,
the camera will take input of the image in front of it and detect any water body
(the shades of colour which represent water are detected) present.
It will then deploy the water type pokemon over that water body.
There other components like angle, height, width, etc. are also considered to give 3D effects.

Any game like Pokemon Go or Ingress will interface these sensors and use this
data to enhance your experience of interactivity with the game. They use AR
to give an immersive feel to the game, much like you are in the game's world
and playing it in real life!
