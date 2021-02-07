# :bangbang: Map performance is problematic. Use is not recommended! :bangbang:

# Pointe du Hoc

<table>
 <tr>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/hoc.png" width="256"/></td>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/hoc_cc.png" width="256"/></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#preamble">Preamble</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#objectives">Objectives</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#screenshots">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>hoc_b1.bsp</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>beta 1</td>
 </tr>
 <tr> 
  <td>Release</td>
  <td>November 2019</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>32 vs 32</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/pointe-du-hoc-b1" title="Download Pointe du Hoc B1 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/184985.png" alt="Pointe du Hoc B1" /></a></td>
 </tr>
</table>


## Preamble
While [Dingenskirchen](https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md) was the first map that I managed to release, Pointe du Hoc is the first own map project that I started. I began mapping in 2008 when Splash Damage [released](https://www.splashdamage.com/news/wolfenstein-enemy-territory-map-source-files-released/) the sources for the 6 standard ET maps. After investigating those maps and open-sourced community maps to try and understand how things were done, Pointe du Hoc started in 2011 out of the desire to create something own. This map has seen over 8 complete restarts throughout the years as with each attempt I learned new things and restarted to implement them. Understandably, this method of working drained my motivation for this project eventually. It was only revived when TrackBase launched the second iteration of their annual map contest which required the submission map to have an historical background. Hence, Pointe du Hoc was reborn.

## Story
**June 6, 1944:**
To grant safe passage for the Allied ships during D-Day a small operation is launched to disable the artillery guns of Pointe du Hoc. The Allies will attempt to gain control of the bunkers on the cliff and advance into the Hinterland where the Axis have hidden the artillery guns from Allied bombers. The Axis have to prevent the loss of this strategic part of Normandy and the artillery guns at all costs.


## Objectives

### Axis
* Do not lose the Forward Bunker to the Allies.
* Prevent the Allies from calling in reinforcements.
* Defend the East Artillery Guns.
* Defend the West Artillery Guns.
* Construct a Command Post.
* Construct a Command Post.

### Allies
* Capture the Forward Bunker.
* Only an Allied Field-Ops can call in reinforcements here.
* Dynamite the East Artillery Guns.
* Dynamite the West Artillery Guns.
* Construct a Command Post.
* Prevent the Axis from constructing a Command Post.

## Media
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc1.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc1.png"></a>


<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc2.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc2.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc3.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc3.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc4.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc4.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc5.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc5.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc6.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc6.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc7.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc7.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc8.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc8.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc9.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc9.png"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc10.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/hoc/hoc10.png"></a>


## Development

### Source
Since we are talking about an open-source game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in the repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/4)

### Compile parameters
```
<build name="Pointe du Hoc">
  <command>[q3map2] -bsp -meta -samplesize 16 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
  <command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
  <command>[q3map2] -light -fast -samples 4 -samplesize 16 -bounce 2 -v -thresh 0.25 -shade -dirty -dirtdepth 256 -lightmapsize 512 -patchshadows -external &quot;[MapFile]&quot;</command>
  </build>
```
> NOTE: These parameters are really bad. Do not use these as reference!

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#)
