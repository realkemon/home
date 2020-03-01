Part 1: Visibility Blocking
=========

 The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game.

Starting the map development with a layout sketch forces us to plan the placement of routes and objectives from the start and enables us to spot problematic areas for performance as well as gameplay early on. For this we need to understand some basics first, which is why the first section of this tutorial will explain how we can control what the game renders at every point in time. The second section will implement those findings in our tutorial map.

<table>
 <tr>
  <td><a href="http://www.youtube.com/watch?v=jNqhtJueO3Y"><img src="http://img.youtube.com/vi/jNqhtJueO3Y/0.jpg"></a></td>
  <td rowspan="2"> <b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md">Tutorials</a><br>
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
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Structural-Mesh">Structural Mesh</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md#Manual-Portals">Hint Brushes</a></li>
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
  <td><b>NOTE:</b><p>The differentiation into <i>"default"</i>, <i>"automatic"</i> and <i>"manual"</i> portals is only done to structure this tutorial. While it is true that there are those three ways to create portals, the resulting portals are treated exactly the same by the engine and have the exact same effects for performance.</p></td>
 </tr>
</table>

______________________
# Practise


## Map Layout

## Structural Mesh

## Hint Brushes 
