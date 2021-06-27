<!-- HEADER -->
<div align="center">
 
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest.png" width="512"/></a>

# Adlernest
 
<!-- TOC -->
<a href="https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md#objectives">Objectives</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md#media">Media</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md#options">Options</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md#changelog">Changelog</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md#specs_and_credits">Specs and Credits</a>
<!-- STORY -->
**Campaign: 'Submarine Depot' (2/3)**
 <br>
After successfully intercepting the shipment from the supply depot, the Allies continue their efforts with the infiltration of a larger storage facility in the remote mountains. According to OSA intel, this facility houses confidential documents that will prove invaluable for future war efforts. The Axis cannot allow this storage facility to be compromised as it would further weaken the operability of the Northern Atlantic submarine fleet, which is the last bulwark against an Allied naval invasion.
<br>
 
<a href="https://www.moddb.com/mods/etlegacy/addons/supply-depot-by-ginc-v4" title="Download 'Supply Depot, by ginc' (v4) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/210427.png" alt="'Supply Depot, by ginc' (v4)" /></a>

## Objectives
 
<a href="https://www.moddb.com/mods/etlegacy/addons/etl-adlernest-v1" title="Download ETL Adlernest (v1) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/216200.png" alt="ETL Adlernest (v1)" /></a>
 
* [ ] The Allies will attempt to breach the facility by dynamiting the door controls.
* [ ] The Allies need to steal the confidential documents from the office in the rear.
* [ ] The Allies need to transmit those documents to OSA headquarters for decyphering.


## Media
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest1.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest1.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest2.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest2.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest3.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest3.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest4.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest4.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest5.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest5.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest6.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest6.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest7.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest7.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest8.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest8.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest9.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest9.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest10.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest10.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest11.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest11.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest12.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest12.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest13.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/adlernest/adlernest13.jpg"></a>

## Changelog

</div>

<details>
 <summary><b>version 1</b> <i>(Jun 27 2021)</i></summary>
 
* [x] Added targetname and scriptname to nearly all in-game entities to enable server admins to build custom scripts if desired.
* [x] Extended map skywards to allow for free shoutcaster/spectator movement.
* [x] Added unique `id`s for spawn slots to prepare [this](https://github.com/etlegacy/etlegacy/issues/1641) feature.
* [x] Comprehensive rework of structural mesh to improve on VIS.
* [x] Removed player collision from noticeboards, picture frames, lying doors etc.
* [x] Colour-coded bunker sections for easier call-outs.
* [x] Dispersed spawn points to declutter mass spawn events.
* [x] Increased player count to 32v32.
</details>

<div align="center">

## Specs and Credits

### Options
 
ET maps are played in different gamemodes and configurations, occasionally calling for different settings. To avoid maintaining separate variations of the same map, optional features have been added, which can be toggled in the map script `pk3/maps/<mapname>.script`. Toggle the optional features by (un-)commenting the respective line. Upload the changed mapscript to your server's mapscript directory *(path depends on mod)*. The following optional features are included in **adlernest Depot**:
* [ ] Optional health and ammo cabinets at Allied spawn. *(default disabled)*
 
 
### Compile parameters

</div>

```
<build name="Adlernest">
<command>[q3map2] -bsp -meta -samplesize 4 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
<command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
<command>[q3map2] -light -fast -samples 4 -samplesize 4 -bounce 3 -bouncegrid -v -thresh 0.5 -shade -dirty -dirtdepth 256 -lightmapsize 1024 -patchshadows -external &quot;[MapFile]&quot;</command>
</build>
```

<div align="center">
 
### Source
Since we are talking about an open-source game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept up-to-date with all latest changes, which means the map source does not necessarily reflect the status of the last release.
<br>
<a href="https://github.com/realkemon/home/tree/master/maps">> DOWNLOAD <</a>
 
### Credits
This is not my own map. It is a visual overhaul of an existing map created by **Dersaidin**.
<br>
They still hold all the rights to the map design and original idea and I do not claim ownership of it.

</div>

----
[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/etl_adlernest.md)
