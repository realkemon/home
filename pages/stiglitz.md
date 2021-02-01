Stiglitz
==========

<table>
 <tr>
  <td><a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/stiglitz.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/stiglitz.png" width="256"/></a></td>
  <td><a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/stiglitz_cc.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/stiglitz_cc.png" width="256"/></a></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#preamble">Preamble</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#concept">Concept</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/stiglitz.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>stiglitz_b1.bsp</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>beta 1</td>
 </tr>
 <tr> 
  <td>Latest Release</td>
  <td>September 2018</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>32 vs 32</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/stiglitz-b1" title="Download Stiglitz B1 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/143568.png" alt="Stiglitz B1" /></a></td>
 </tr>
</table>

Preamble
============
This map was my entry for the 2018 Trackbase map contest. Unfortunately, due to time constraints, it was not possible to realise the original concept of this map for beta 1. The concept was to allow free movement of the to-be-escorted Stiglitz, much like hostage missions in CS:GO. It is, however, still planned for beta 2, which will come with a wonderful lua implementation of the concept by C.

Concept
============
[TODO]

Story
============

**July 1943:**
Local resistance reported a branch of Deathshead’s X-Labs in a small remote village. Hugo Stiglitz, an OSA agent, has been sent to infiltrate the facility and gather intel of Deathshead’s activities. Communication went dead some days ago and Stiglitz' true identity has likely been uncovered, which means almost certain death. The Allies are trying to make their way through the village, free Stiglitz and escort him back to safety for debriefing at the OSA headquarters.

Media
============
[TODO]

Development
============
 
### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/8)

### Compile parameters

```
<build name="Stiglitz">
  <command>[q3map2] -meta -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
  <command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
  <command>[q3map2] -light -samples 4 -samplesize 8 -v -thresh 0.05 -patchshadows -dirty -dirtdepth 256 -external -lightmapsize 512 -shade -bounce 2 -bouncegrid &quot;[MapFile]&quot;</command>
  </build>
```
> NOTE: These parameters are really bad. Do not use these as reference!

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/stiglitz.md)
