---
layout: default
title: Configuration
assets-dir: assets/tutorials/r_pi
sections:
---

We use SSH to control R-pi through our laptop
for SSH, we need r-pi to be connected to some network.

We can configure R-pi's SSH, without ever requiring to boot R-pi.

Open os/etc/wpa_supplicant/wpa_supplicant.conf
and write following piece of code in it:

{% highlight python %}
network={
		ssid-"WIFI_NAME"
		psk="WIFI_PASSWORD"
}
{% endhighlight %}

Use command 'ifconfig' to see ip,network,gateway of your Wi-fi.

For setting static ip, open etc/network/interfaces.d	
1-	Change auto lo to wlan0
2-	Change manual to static
3-	After iface wlan0 inet manual ,
	enter => 	address 
				network
				gateway(first ip of subnet)

Once configured, type 'ssh pi@address' in terminal to connect to your R-pi.