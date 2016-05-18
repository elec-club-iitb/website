---
layout: page
---

About Us
--------
Want to know a computer works, or how to design a weird circuit? Well, this is the place for you!

The Electronics Club is a community of electronics hobbyists and enthusiasts within IIT, Bombay. We conduct various events and sessions through out the year to bring out the techie in you. The newly commissioned Tinkerers' Lab provides an excellent place to experiment and try out new things.

Initiatives
----

We maintain a [community blog](/blog)! Check out the latest blog post:

{% for post in site.posts %}

[**{{ post.title }}**]({{ post.url | prepend: site.baseurl }}): Posted by {% if post.author %}{{ post.author }}{% else %}{{ site.title }}{% endif %} on {{ post.date | date: "%B %-d, %Y" }}

We also have a [great set of tutorials](/tutorials) on AVR, Arduino and more to help you get started with tinkering! 

{% break %}
{% endfor %}

Vision
-------

The Electronics Club envisions to nurture your engineering maturity by giving you practical and hands on exposure. We aim to fill in the void of Electronics hobbyists in the institute by providing a platform where the theory learnt in classes can be applied in the real world.
