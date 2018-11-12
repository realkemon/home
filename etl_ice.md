'Ice'
==========

<img src="https://github.com/realkemon/home/blob/master/levelshots/etl_ice.png" width="256"/> | <img src="https://github.com/realkemon/home/blob/master/levelshots/etl_ice_cc.jpg" width="256"/>
:---|:---
Status | version 2
Release | 11/11/2018
Players | 16 v 16
Download | <a href="https://www.moddb.com/mods/etlegacy/addons/etl-ice-v2" title="Download ETL Ice v2 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/170820.png" alt="ETL Ice v2" /></a>

Index
============
[Home](https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon)
* [Story](https://github.com/realkemon/home/blob/master/etl_ice.md#story)
* [Media](https://github.com/realkemon/home/blob/master/etl_ice.md#media)
* [Changelog](https://github.com/realkemon/home/blob/master/etl_ice.md#changelog)
  * [to version 1](https://github.com/realkemon/home/blob/master/etl_ice.md#to-version-1)
  * [to original](https://github.com/realkemon/home/blob/master/etl_ice.md#to-original)
* [Specs](https://github.com/realkemon/home/blob/master/etl_ice.md#specs)
  * [overview](https://github.com/realkemon/home/blob/master/etl_ice.md#overview)
  * [compile parameters](https://github.com/realkemon/home/blob/master/etl_ice.md#compile-parameters)


Story
============

In an attempt to locate the X-Labs run by Deathshead in occupied Norway, the Allies have set up a position close to an Axis Outpost.
Facing the Allied advances, the Axis quickly retreated and abandoned the coastal fortress leaving behind crucial documents depicting Axis troop movement and strongholds. 
The Axis forces must get hold of the documents left behind in the quickly abandoned fortress and radio them to the headquarters for safe-keeping. 
The Allies attempt to hold the fortress until further reinforcements can make their way to the location.


Media
============

Below are some comparison screenshots in the before-after style. On the left is the scene in original Ice and on the right roughly the same scene of the overhauled version. Both versions below use the standard texture set, so all differences are related to map work rather than HD textures.

![1](https://i.imgur.com/kGQFCb7.jpg)
![2](https://i.imgur.com/t3KXEJs.jpg)
![3](https://i.imgur.com/XL5RDGK.jpg)
![4](https://i.imgur.com/IwRmfYe.jpg)
![5](https://i.imgur.com/syRV8Qx.jpg)
![6](https://i.imgur.com/PTXnU1t.jpg)
![7](https://i.imgur.com/yDSG2rR.jpg)
![8](https://i.imgur.com/KDQQFuR.jpg)
![9](https://i.imgur.com/nlLEQmQ.jpg)
![10](https://i.imgur.com/kWjm7iP.jpg)
![11](https://i.imgur.com/3DsdwRv.jpg)
![12](https://i.imgur.com/2dnqKX1.jpg)
![13](https://i.imgur.com/75HqIus.jpg)
![14](https://i.imgur.com/0oQ932U.jpg)
![15](https://i.imgur.com/TXWiLvb.jpg)
![16](https://i.imgur.com/uLU9mlw.jpg)
![17](https://i.imgur.com/A8lzoOH.jpg)
![18](https://i.imgur.com/LZlQS4u.jpg)
![19](https://i.imgur.com/5nsN4dU.jpg)
![20](https://i.imgur.com/24bRlwN.jpg)
![21](https://i.imgur.com/MaujE2l.jpg)
![22](https://i.imgur.com/1C9sQQj.jpg)

Changelog
============

### to version 1:

* Added antenna to radio transmitter building.
*	Added missing tracemap. Thank you IR4 and Ensiform for reporting.
* Fixed hovering pipes in forward bunker.
* Fixed icicles brushes have visible border. Thank you ryven for reporting.
* Fixed several caulk leaks. Thank you ryven for reporting.
* Fixed missing texture for documents model. Thank you ryven and WutangH for reporting.
* Fixed ladder of guardtower not being setstate invisible. Thank you WuTangH for reporting.
* Fixed clipping issue on the watertower. Thank you WuTangH for reporting.
* Clipped beams in radio transmitter. Thank you ryven for reporting.
* Clipped windows in west bunker exit lookout. Thank you ryven for reporting.
* Clipped tunnel borders. Thank you ryven for reporting.
* Removed spikes from depot wall because they implied an obstacle in the doc-run. Thank you ryven and hatcher for reporting.
* Adjusted unnecessary steps potentially screwing up the aim in key-fighting areas. Thank you ryven for reporting.
  * Tracks in the bunker.
  * Stairs to main entrance.
  * Red pipe near Axis north barracks.
* Adjusted several boxes to improve the movement around them. Thank you ryven for reporting.
* Adjusted tree stuck in pipeline. Thank you ryven and WuTangH for reporting.
* Adjusted rocks near Allied south barracks to use snow texture instead of desert rock.
* Adjusted walls in the two hididng spots in the bunker to be closer to original Ice. Thank you ryven for reporting.
* Adjusted side wall to look pre-damaged. Thank you ryven for reporting.

### to original:
* Improved VO announcements. 
  * As long as both Main Entrance and Side Wall are active VO is: "defend/destroy entrances".
  * As soon as one has been breached VO is: "defend/destroy the side OR main entrance".
  * Added VO announcements for active map objectives when joining a team.
  * Added VO announcements for the guardtower.
* Added base alarm that sounds for 15s when the main entrance gets destroyed.
  * Guardtower alarm speaker works dynamically.
* Added colour-coded guiding system intended to ease new players into the map.
* Added ambient sounds.
* Construciton materials have been made in the style of original maps.
* Doors have been widened to allow for faster movement.
* Visual changes have been made.


Specs
============

### Overview
Map | Ice
:---|:---
Total Brushes | 12.271
Total Patches | 334
Total Entities | 1.244
Ingame Entities | 278
### Compile parameters:
```
[q3map2] -meta -v -mv 1024 -mi 6144 -samplesize 6 "[MapFile]"
[q3map2] -vis -saveprt -v "[MapFile]"
[q3map2] -light -samples 5 -samplesize 6 -v -thresh 0.05 -patchshadows -dirty -dirtdepth 256 -external -lightmapsize 512 -shade -bounce 2 "[MapFile]"
```
