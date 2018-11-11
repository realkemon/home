<img src="https://i.imgur.com/QPiQl8o.png" width="64"/> kemon
==========

*The Devil of Details*

* Level-Design: [TODO: wiki page]
* 2D-Design: [TODO: wiki page]
* Contact: [kemon#3871](https://discordapp.com/invite/UBAZFys) on Discord


INTRODUCTION
============

I'm a Europe-based hobby game developer in the idtech3 engine environment. For [ET: Legacy](https://github.com/etlegacy), an open source project aiming to restore its good old days of [Wolfenstein: Enemy Territory](https://github.com/id-Software/Enemy-Territory), I work as a Level-Designer, 2D-Artist and Community Manager.

### Level-Design

There are two sides to my work as a Level-Designer. The first one being own projects that I designed and created from the ground up and the second one being map-overhauls for ET:L. 

**OWN LEVELS**

![Dingenskirchen](https://github.com/realkemon/home/blob/master/maps/dingenskirchen.png)
![Stiglitz](https://github.com/realkemon/home/blob/master/maps/stiglitz.png)






Enemy Territory: Legacy is based on the [raedwulf-et](https://bitbucket.org/tcmreastwood/raedwulf-et/)
project which in turn is based on the [GPL'd source code](https://github.com/id-Software/Enemy-Territory) of Wolfenstein: Enemy Territory.

The main goals of the project are fixing bugs, cleaning up the codebase and adding useful features
while remaining compatible with the ET 2.60b version.

The Legacy mod is the default mod shipped with ET: Legacy. It aims to add many useful features and
improvements, while staying close to the original gameplay, as well as being lightweight and extensible
through Lua scripts.

For more information consult our [changelog](https://dev.etlegacy.com/projects/etlegacy/wiki/Changelog).

ET: Legacy development is a collaborative effort done in an open, transparent and friendly manner.
Anyone is welcome to join our efforts!


### Donations

By request, we have finally managed to create a PayPal account for donations. So if you like the
ET: Legacy project or our game server, don't hesitate to send us some cash at **Paypal: etlegacy@liebt-dich.info**

Your contribution will be used to pay for our server and domain. To clarify, the project is not dependant
on donations. But we don't reject them if you want to honor our work. Thank you!


GENERAL NOTES
=============

### Game data

Wolfenstein: Enemy Territory is a free release, and can be downloaded from [Splash Damage](http://www.splashdamage.com/content/download-wolfenstein-enemy-territory).

This source release contains only the engine and mod code but not any game data,
which is still covered by the original EULA and must be obeyed as usual.

In order to run ET: Legacy you will need to copy the original assets files
(*pak0.pk3*, *pak1.pk3* and *pak2.pk3*) to the etmain folder.


### Compatibility with Enemy Territory 2.60b

ET: Legacy remains compatible with the ET 2.60b version as much as possible.

Please note that ET: Legacy is *not* compatible with PunkBuster enabled servers.
ET: Legacy clients also cannot connect to servers running the ETPro mod.


### Linux 64 bit

Please remember that 64 bit ET: Legacy clients can only connect to servers running
mods providing a 64 bit version. You will be able to play 32 bit-only mods only if
you compile ET: Legacy on a 32 bit system or crosscompile it for 32 bit architecture
on a 64 bit system.

At the moment, only the Legacy mod is available in 64 bit version, while all other
existing mods are available in 32 bit only version.

In case you are a running a 64 bit system, you probably might want to use the
**bundled libraries** which are located in a separate *etlegacy-libs* repository and
can be automatically downloaded using the `git submodule` command. See the next
section for more details.
