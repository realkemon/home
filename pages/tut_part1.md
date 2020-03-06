Part 1: Visibility Blocking
=========

 The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game.

Starting the map development with a layout sketch forces us to plan the placement of routes and objectives from the start and enables us to spot problematic areas for performance as well as gameplay early on. For this we need to understand some basics first, which is why the first section of this tutorial will explain how we can control what the game renders at any point in time. The second section will implement those findings in our tutorial map.

<table>
 <tr>
  <td><a href="http://www.youtube.com/watch?v=jNqhtJueO3Y"><img src="http://img.youtube.com/vi/jNqhtJueO3Y/0.jpg"></a></td>
  <td rowspan="2"> <b>Index:</b><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md">Back</a><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#part-1-visibility-blocking">Part 1: Visibility Blocking</a>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#theory">Theory</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Default-Portals">Default Portals</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Automatic-Portals">Automatic Portals</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Manual-Portals">Manual Portals</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#conclusion">Conclusion</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#practise">Practise</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Map-Layout">Map Layout</a></li>
  <ul>
   <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Dimensions">Dimensions</a></li>
   <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Distances">Distances</a></li>
  </ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Structural-Mesh">Structural Mesh</a></li>
  <ul>
   <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Brushwork">Brushwork</a></li>
   <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Portals">Portals</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#VIS-Blocking">VIS Blocking</a></li>
 </ul>
 </td>
 </tr>
 <tr>
  <td><i>The video above is a fast run-down of the basics of visibility blocking. <br> For a more extended documentation see this page below.</td>
 </tr>
</table>

______________________
# Theory
Let's begin with some good and bad news. The bad news is, that the engine doesn't simply render only what the player sees. The good news, however, is that we have full control over what the engine renders. For that, we need to understand some basics first.

## Default Portals
During a `-vis` compile, your map automatically gets split up into several uniform cubes. Those cubes are separated from each other by the colourful planes that we can see in the comparison images below. To have the correct terminology, let's refer to the cubes as **"(BSP) leaves"** and to the colourful planes as **"portals"**.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map_vis.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is a direct comparison of Würzburg Radar with its (BSP) leaves visualised by the portal view plugin in NetRadiant.</i></td>
 </tr>
</table>

### Test Scenario
In the test scenario below you can see that the portals divide our map up into 4 (BSP) leaves. The map includes a structural wall (in orange/G5:L5) and detail brushes (in red). The structural wall is perfectly aligned with the default portals as we can see in the 2D workspace. 
Below that, we have the same scenario as simplified grid images (top-down) and in-game shots. These show that if the player is inside (BSP) leaf A6:F11, all detail is being rendered. However, as soon as the player moves over to (BSP) leaf G6:L11, the contents of G0:L4 aren't rendered anymore. **This is because the structural wall prevents the engine from drawing a direct line of sight in-between those two (BSP) leaves.** 

<table>
 <tr>
  <td><b>In Radiant</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_vis.png"></td>
 </tr>
  <tr>
   <td><b>As Grid</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid1.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid2.jpg"></td>
 </tr>
 <tr>
  <td><b>In Game</b></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0000.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0001.png"></td>
 </tr>
 </table>


<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>NOTE:</b><p>As soon as the engine can draw a direct line of sight from anywhere within its current "(BSP) leaf" to anywhere within another (BSP) leaf, the entire contents of that other (BSP) leaf are rendered.</p></td>
 </tr>
</table>

______________________
## Automatic Portals
We can derive from the test scenarios above that while portals divide our map up into (BSP) leaves, they themselves are not blocking line of sight. What in fact is blocking line of sight are the **structural brushes** in our map. These, in turn, directly influence the generation of additional portals, which further divide our map up into smaller (BSP) leaves. 
 
### Test Scenario
In the scenario below we changed our structural brush (in orange/I4:L4) so it doesn't adhere to the default portals in the centre anymore. This results in additional portals being generated by the engine at those edges of the brush that are not aligned with any portal. While the structural wall still blocks line of sight for the player to I0:L3, the portal mesh isn't effective anymore. 
The active (BSP) leaf (G6:L11) extends past the plane of the structural wall (H-I). For that reason, it is possible for the engine to draw a direct line of sight in-between G6:L11 and I0:L3. Due to that, the engine renders the detail contents although they are not actually visible to the player.

<table>
 <tr>
  <td colspan="2"><b>In Radiant</b></td>
 </tr>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_vis.png"></td>
 </tr>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_grid.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0002.png"></td>
 </tr>
 <tr>
  <td><b>As Grid</b></td>
  <td><b>In Game</b></td>
 </tr>
</table>

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>REMEMBER:</b><p>As soon as the engine can draw a direct line of sight from <b>anywhere</b> within its current (BSP) leaf to <b>anywhere</b> within another (BSP) leaf, the entire contents of that other (BSP) leaf are rendered.</p></td>
 </tr>
</table>

______________________
## Manual Portals
In a regular map it's not realistic to have all of our structural brushes aligned with the default portals. Nevertheless, since we still want to ensure stable performance, we need to find a way to fix these problems. Luckily, the engine provides an option to manually create portals in our map by placing **"hint"** brushes. 
To manually place a portal, we can create a new brush with one face in the plane we want our portal to be in. To all faces of that brush we assign `common/hintskip`, except for the face where we want our manual portal to be. To that face we assign `common/hint`.

### Test Scenario
Our second test scenario was lacking effective visibility blocking, so we added a manual hint brush portal, which we can see in the images below. These manual portals behave exactly the same way as other portals, which is why our entire map is now divided along the structural wall. This, in turn, prevents the engine from rendering the detail in I0:L3.

<table>
 <tr>
  <td colspan="2"><b>In Radiant</b></td>
 </tr>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3_vis.png"></td>
 </tr>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3_grid.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0003.png"></td>
 </tr>
 <tr>
  <td><b>As Grid</b></td>
  <td><b>In Game</b></td>
 </tr>
</table>

## Conclusion
The engine processes visibility by attempting to draw **direct lines of sight** in-between (BSP) leaves. As soon as the engine can draw a direct line of sight from **anywhere** within its current (BSP) leaf to **anywhere** within another (BSP) leaf, the entire contents of that other (BSP) leaf are rendered. 
(BSP) leaves are separated by portals and we have learned that there are three ways the engine can be prompted to generate a portal *(default, automatic and manual)*. This means, we have three different options through which we can influence how visibility is being processed in our map. <br> In the following section we will have a closer look on how to work with each portal type to achieve maximum results for performance. 
<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>NOTE:</b><p>The differentiation into <i>"default"</i>, <i>"automatic"</i> and <i>"manual"</i> portals is only done to structure this tutorial. They are all treated exactly the same and have the exact same effects for performance.</p></td>
 </tr>
</table>

______________________
# Practise
In the previous section we learned that portals divide our map up into (BSP) leaves with which the engine calculates visibility. By creating strucutral brushes that block line of sight through those portals we lead the engine to only render what is necessary. Placing hint brushes at key spots in our map gives us ultimate control to fine-tune this process. <br> We are going to use these findings and implement them into our tutorial map in the section below.

## Map Layout
When starting development of a multiplayer map for any game, it is especially helpful to create a layout sketch early on. On the one hand, this forces us to think about gameplay aspects from the very start. On the other hand, the previous findings enable us to already spot possibly problematic areas for performance in the initial layout sketch. Thinking about gameplay and performance at such an early stage means that there is no work lost when adjustments have to be made. The earlier we spot flaws, the easier it is to combat them.

[INSERT LAYOUT SKETCH OF TUTORIAL MAP AND COMPARE WITH LEVEL-EDITOR SHOT OF TUTORIAL MAP]

The comparison images above show that the grid of regular squared paper translates perfectly to the grid in Radiant. Because of that, we can already align our map with the <a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Default-Portals">default portals</a> in our layout sketch to avoid the generation of <a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Automatic-Portals">automatic portals</a>, which could potentially undermine our performance. Of course it's not possible to always align all routes to the default portals as you can see with the side tunnel in [INSERT COORDINATES OF SIDE TUNNEL]. Nevertheless, in those cases it is still good practise to align as many walls with the default portals as possible to keep the number of automatically generated portals to a minimum. 

### Dimensions
As a rule of thumb, one square on our paper sketch translates to one square in Radiant of gridsize 256. To give us a further sense of dimensions, we can refer to the command map images depicted below. We can use these estimates to create a layout that is going to feel natural to the player from the start to prevent the need for too many adjustments to scaling.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>CONCLUSION:</b><p>On grid 256 and regular squared paper a main road is 1-2 squares, a smaller footpath as a side route is around 1 square and a  courtyard measures around 4x4 squares. </p></td>
 </tr>
</table>

### Distances
Only feeling natural and realistic in scale, however, will not convince the players to play our map. Especially, in competitive multiplayer games, gameplay is the most important aspect. Naturally, we don't simply want to copy existing layouts, however, basing our map layout on good-practise examples enables us to have decent gameplay even before the first player test. 

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>NOTE:</b><p>For a more in-depth guide for distances refer to <a href="https://forums.splashdamage.com/t/et-competition-maps-guidelines/116254">this thread</a>. In general, the distance from spawn to objective combined with the respective spawn times should be shorter for the attacking team.</p></td>
 </tr>
</table>

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




## Structural Mesh
After evaluating our layout sketch in regards to its dimensions of structures, distances in-between objectives and alignment with the default portals, we can start translating it into our level-editor.

### Brushwork

### Portals

### VIS Blocking


## Hint Brushes 
