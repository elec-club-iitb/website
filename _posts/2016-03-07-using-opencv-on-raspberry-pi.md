---
layout: post
comments: true

title: Using OpenCV on Raspberry-Pi
excerpt: Getting OpenCV installed and running on Rpi, with necessary scripts and files
author: Riddhish Bhalodia
category: [Electronics, Robotics]
tags: [Raspberry Pi, OpenCV]
---


![raspberry pi logo](rpi.jpeg)

Raspberry Pi is slowly finding a lot of applications related to image processing. I am going to provide a little overview of how one can get OpenCV up and running on your pi. I will be using tightVNC server for getting the display.

The first step is getting OpenCV installed on your pi, we will follow the exact same procedure of installing OpenCV which I use on ubuntu. I will show you step by step on how to get your opencv setup on rpi ready.

**<u>Step Zero</u>**

Before we begin, I will tell you how my pi is connected so there is no confusion after moving further.  
I have my pi connected to my wi-fi router with a LAN cable and have changed it to a _static IP configuration._ I am accessing it through my terminal using the ssh channel. In short what I have now and what you should have is a rpi with it's terminal. If you are totally new to rpi, I suggest you to take a look at these tutorials for setting up your pi [get you pi up and running](http://riddhishb.github.io/blog/rpituts.html).

**<u>Step One</u>**

Install tightvncserver on the rpi as well as your linux powered laptop/desktop where you plan to get the display window of your pi. You can do that by a simple command `sudo apt-get install tightvncserver`

**<u>Step Two</u>**

Now we start the vnc-server in the rpi, this will broadcast the "screen" of the rpi over the server, which then can be accessed remotely from some other laptop/desktop connected with the same server. In order to do this we need to run the following command on the rpi terminal:  
`vncserver :1 -geometry 1366x600 -depth 16 -pixelformat rgb565`  
If you are doing this for the first time then it will ask you for setting a password (Yes, you need to remember it!). After finishing that you should see the following on the rpi's terminal.  
`#New ‘X’ desktop is raspberrypi:1`  
This means you have successfully got your rpi desktop put up on your server, now you need to access it.

**<u>Step Three</u>**

Now using the laptop/desktop's terminal and execute this command:  
`vncviewer rpi_ip:5901`  
Here, rpi_ip is the static IP which you would have set for your pi. You will be asked for a password which you have set in the previous step, and then voila!. :D

**<u>Step Four</u>**

Now all you need is to get opencv installed on your rpi. To get that done just follow the steps which you will use to install opencv in normal ubuntu based system, if you are comfortable with it then this tutorial stops here for you.For OpenCV installation Just follow the steps listed [here(OpenCV installation on Ubuntu).](opencv installation.pdf)  
You will also need two scripts in above installation the opencv installation. Get them from here:  
[opencv2_4_6_1.sh](opencv2_4_6_1.sh)  
[new](new)

**Thank You!**  

* * *
