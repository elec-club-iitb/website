---
layout: default
title: Configuration
assets-dir: assets/tutorials/r_pi
sections:
---

We use SSH to control R-pi through our laptop
for SSH, we need r-pi to be connected to some network.

We can configure R-pi's SSH, without ever requiring to boot R-pi.

Once the OS image has been burned on the SD-Card, remount the
SD-card. You will see a lot of folders required by the OS to boot.
We will change some configuration files before we insert the SD-card into
R-Pi so that our R-Pi can directly connect to WiFi networks and you can 
SSH into it.

### WiFi password setting

Open `/etc/wpa_supplicant/wpa_supplicant.conf` in the SD-card
and write following piece of code in it at the end:

{% highlight python %}
network={
    ssid="WIFI_NAME"
    psk="WIFI_PASSWORD"
    key_mgmt=WPA-PSK
}
{% endhighlight %}

### Enable SSH

Edit file `/etc/rc.local` and add the following line at the end

{% highlight console %}
/etc/init.d/ssh start
{% endhighlight %}

Now remove the SD-card, put it in the R-Pi and power it up. You should
see a red power light and a green light flashing up, if the OS boots correctly.

After some time, connect to the R-Pi using SSH. On linux, you can run the
command `ssh pi@raspberrypi.local`, or use PuTTY on Windows/OSX. 

*Note: `raspberrypi.local` is an identifier for R-Pi's connected to your local network,
hence you don't need to specify the exact IP address. Though, if you know the IP
address, you can specify that too instead.*

Enter the default password `raspberry`, and the RPi terminal will be accessible
looking something like this

{% highlight console %}
udiboy:~$ ssh pi@raspberrypi.local
pi@raspberrypi.local's password: 

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Mon May  1 13:19:06 2017 from 192.168.0.120
pi@raspberrypi:~ $ 
{% endhighlight %}

Change the password of the RPi by running `passwd`.

And that's it! You are done setting up!

#### Static IP configuration

*Note: Static IP configuration is no longer required because recent
versions of the RPi OS have a discovery protocol enabled which lets you
SSH into the RPi without knowing the IP address.*

This can be done by editing the file on your PC too.

We will assign a static IP to the R-Pi so that every time it connects to
WiFi, it uses the same IP, hence we know what IP the R-Pi has.

You will need to know the IP address format, netmask and gateway of your network.
For Tinkerers' Lab, it is

{% highlight console %}
IP = 192.168.0.*
Netmask = 255.255.255.0
Gateway = 192.168.0.1
{% endhighlight %}

For setting static ip, open `/etc/network/interfaces.d` (again by mounting the
SD-card)

You will see a line reading `iface wlan0 inet manual`

Change `manual` to `static`
and add the following lines

{% highlight console %}
    address 192.168.0.42
    netask 255.255.255.0
    gateway 192.168.0.1
{% endhighlight %}

Once configured, type `ssh pi@<ip-address>` in terminal to connect to your R-pi.
