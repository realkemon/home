Layout Sketch
=========

<table>
 <tr>
  <td> <b>Index:</b><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md">Home</a><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md">Part 1: Foundation</a>
   <ul>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_1.md">Visibility Blocking</a></li>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_2.md"><b>Layout Sketch</b></a></li>
    <ul>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_2.md#dimensions">Dimensions</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_2.md#distances">Distances</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_2.md#routes">Routes</a></li>
    </ul>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_3.md">Structural Mesh</a></li>
   </ul>
 </td>
 </tr>
</table>

When starting development of a multiplayer map for any game, it is especially helpful to create a layout sketch early on. This enables us to anticipate both gameplay and performance from the start. The earlier we spot flaws, the easier it is to combat them.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/basic_structure.jpg" width="256"> </td>
  <td>Most ET maps consist of 2 phases, where an objective in phase 1 triggers the forward spawn switch. Phase 2 generally includes an optional spawn point that allows for more strategic rotations.</td> </tr>
</table>





## Dimensions
As a rule of thumb, one square on our paper sketch translates to one square in Radiant of gridsize 256. To give us a further sense of dimensions, we can refer to the grid images depicted below. We can use these estimates to create a layout that is going to feel natural to the player from the start to prevent the need for too many adjustments to scaling.

## Distances
Only feeling natural and realistic in scale, however, will not convince the players to play our map. Especially, in competitive multiplayer games, gameplay is the most important aspect. Naturally, we don't simply want to copy existing layouts, however, basing our map layout on good-practise examples enables us to have decent gameplay even before the first player test. In general, the distance from spawn to the objective plus the difference in spawn times should be lower for the attacker to prevent stale gameplay.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>EXAMPLE:</b><p><b>Würzburg Radar:</b> Axis spawn cycle is 10 seconds longer than Allied. Travel time to East Radar is ~15 seconds from Allied CP and ~10 seconds from Axis spawn. Average duration to objective is 5s shorter for attackers.<br><b>-> GOOD</b></p>
   <p><b>Fueldump:</b> Axis spawn cycle is 10 seconds longer than Allied. Travel time to Fueldepot is ~30 seconds from Allied CP and ~10 seconds from Axis spawn. Average duration to objective is 10s shorter for defenders.<br><b>-> BAD</b></p>
</td>
 </tr>
</table>

## Routes
The area of the final objective should have multiple entry points to prevent the defenders from camping a single route. However, transforming the map into swiss-cheese leads to players getting lost on the one hand and on the other it encourages the defenders to simply camp directly at the objective. While the distances to objectives should be attacker biased, the individual routes should be slightly favourable to defenders in terms of cover. That is because the defending team has to split up and defend multiple routes, while the attacking team should stick together for a decisive push on one route. 


Below are grid images of various maps that you can have a look at to get a feeling for the dimensions of structures, distances in-between objectives and placement of routes.

<table>
 <tr>
  <td rowspan="2"><b>Vehicle Escort</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_goldrush.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_supply.png"></td>
 </tr>
 <tr>
  <td>Gold Rush</td>
  <td>Supply Depot</td>
 </tr>
 <tr>
  <td rowspan="2"><b>Document Run</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_radar.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_frostbite.png"></td>
 </tr>
 <tr>
  <td>Würzburg Radar</td>
  <td>Frostbite</td>
 </tr>
 <tr>
  <td rowspan="2"><b>Dynamite</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_oasis.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/grid_erdenberg.png"></td>
 </tr>
 <tr>
  <td>Siwa Oasis</td>
  <td>Erdenberg</td>
 </tr>
 </table>

[:arrow_backward: Back](https://github.com/realkemon/home/blob/master/pages/tut_part1_1.md) | [:arrow_forward: Proceed](https://github.com/realkemon/home/blob/master/pages/tut_part1_3.md)
:---:|:---:
