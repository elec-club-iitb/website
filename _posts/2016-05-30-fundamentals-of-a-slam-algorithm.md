---
layout: post
comments: true

title: Fundamentals of a SLAM Algorithm
excerpt: Discuss the basic concepts behind all SLAM Algorithms. 
author: Arunabh Ghosh
category: [Electronics, Robotics]
tags: [algorithm]

assets-dir: assets/fundamentals-of-a-slam-algorithm
header-img: assets/fundamentals-of-a-slam-algorithm/cover.png
---

Introduction
------------ 

The term SLAM is as stated an acronym for **Simultaneous Localization And Mapping**. Mapping is all about building maps of the environment. There are a number of different methods for building maps and some of them are quite sophisticated. All these methods have in common that they build a model of the environment while also addressing the fact that the robot itself accrues uncertainty while it moves.  

Steps involved in SLAM Algorithms
---------------------------------
The various algorithm consists of multiple parts; Landmark extraction, data association, state estimation, state update and landmark update. This post will explain what happens in each step. There are many different algorithms to accomplish each of these steps and one can follow any one of the methods. The fundamentals of each algorithm is what this post will explain.


- **_Landmark Extraction_**:<br/>
![Landmark-Extraction]({{ site.baseurl }}/{{ page.assets-dir }}/image_2.jpg)<br/>
Landmarks are distinct, salient features like blobs or corners within an image/frame. Salient features in computer vision are an art in itself. There are dozens of different approaches to extract, describe and match such features. Once extracted they help the robot keep track of where it is by measuring its position relative to the landmark. Landmarks act as memory and helps the robot identify whether it has visited a certain place in the past or not. This leads us to the next part.


- **_Data association_**:<br/>
![Data-Association]({{ site.baseurl }}/{{ page.assets-dir }}/image_3.png)<br/>
The problem of data association is that of matching observed landmarks from different (laser) scans with each other. We have to accurately tell whether we have seen a landmark or if it’s a new landmark. If it’s new we add it to the list of observed landmarks, if it’s old we we can measure the relative position of the robot and then accordingly update the position of the robot as well as the landmark on the map. This brings us to the next logical step.


- **_State Estimation and State Update_**:<br/>
Here we try to estimate position of the robot using input from number of sensors. There are two types of sensors, internal and external sensors:
 1. Internal sensors - These are sensors that are attached to the robot. They include **accelerometer**, **gyroscopes**, **motor encoders**, **cameras** which help the robot localize itself without any external interference.
 2. External sensors: As the name suggests these the robot gets its input from sources not attached to the robot. It includes navigation systems like **GPS**, **electric beacons** etc.

   Using just internal sensors usually gives small amount of error which over time adds up to produce significant errors. This is why we also employ the use of external sensors to facilitate internal sensors. 
We update the estimated state using sensor data. Using observed landmarks we calculate what should have been our position. Usually there is some difference between the estimated state and the calculated state, this is called the **innovation**.
Finally depending upon how sure are we about the landmarks and the sensor data we update the robot position to be somewhere between estimated state and calculated state.
The flowchart shown below depicts the above process :-

![State-Update]({{ site.baseurl }}/{{ page.assets-dir }}/image_1.jpg){:style="margin-left:37px;"}

- **_Landmark update_**:<br/> 
When we observe a previously unseen feature we update the list of landmarks to include this new feature. Also when we observe a old landmark, if it appears at the same position as in the previous measurement our confidence in that Landmark is increased. This used to decide if we should trust the sensors more than the landmarks or vice-versa.

After Landmark update the robot moves and then the whole cycle repeats again. When the robot moves the uncertainty of its position increases. After the cycle not only the robot is confident of its position but has also extracted information about the environment and associated itself with it. In this way the robot not only **maps the environment but also knows where it is in it**.

Conclusion
----------
![Application]({{ site.baseurl }}/{{ page.assets-dir }}/image_0.png)<br/>
The main aim of this post was to familiarize one with the basics of a SLAM Algorithm to the level that he/she is now able to go further, read tutorials from the internet and implement a SLAM based robot. The applications of this technology are infinite. It is the key to **self-driving cars**, **unmanned aerial vehicles**, **autonomous underwater vehicles**, **planetary rovers**, **newly emerging domestic robots** and even **robots inside the human body**. It is a big and active research field with many unsolved problems.


**_Hope you had a good time reading this blog and were able to learn something new!!_** 
