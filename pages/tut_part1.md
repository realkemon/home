Part 1: Visibility Blocking
=========

The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game. 
This part will walk you through how the engine processes visibility, so we are able to control exactly what the engine renders at any given time in our map.

|[![VIS](http://img.youtube.com/vi/jNqhtJueO3Y/0.jpg)](http://www.youtube.com/watch?v=jNqhtJueO3Y "Part 1: Visibility Blocking")|
|:---:|
|<i>The video above is a fast run-down of the basics of visibility blocking. <br> For a more extended documentation see this page below.</i>|
______________________
Basics
------
Let's begin with some good and bad news. The bad news is, that the engine doesn't simply render only what the player sees. The good news, however, is that we have full control over what the engine renders. For that, we need to understand some basics first.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map_vis.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is a direct comparison of Würzburg Radar with its (BSP) leaves visualised by the portal view plugin in Radiant.</i></td>
 </tr>
</table>

During a `-vis` compile, your map automatically gets split up into several uniform cubes. Those cubes are separated from each other by the colourful planes that you can see in the comparison images above. To have the correct terminology, let's refer to the cubes as **"(BSP) leaves"** and to the colourful planes as **"portals"**.
Because our entire map is split up into those (BSP) leaves, the player is in one of them at all times. From the current (BSP leaf, the engine then creates a list of all other (BSP) leaves to which it can draw a direct line of sight. It then renders everything that is within those (BSP) leaves, whether the player can see it or not.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_vis.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is a test scenario which we will use to understand the basics of visibility blocking.</i></td>
 </tr>
</table>

In the test scenario above you can see that the portals divide our map into 4 (BSP) leaves. The map includes a structural wall (in orange) and detail brushes (in red). The structural wall is perfectly aligned with one of the portals as we can see in the 2D workspace views. Below we have the same scenario in a simplified grid image (top-down) and in-game shots.
* The red cubes are our detail brushes.
* The grey block is our structural wall.
* The blue lines are our "portals".
* The highly energetic owl is our player.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid1.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid2.jpg"></td>
 </tr>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0000.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0001.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is our artificial test scenario as a simplified grid image and in-game shots.</i></td>
 </tr>
</table>

The images above show that if the player is within the (BSP) leaf A6:F11, all of the detail is being rendered. It doesn't matter whether or not the player actually sees the detail in G0:L4. However, as soon as the player moves over to the (BSP) leaf G6:L11, the contents of G0:L4 aren't rendered anymore. This is because the structural wall prevents the engine from drawing a direct line of sight in-between those two (BSP) leaves.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>NOTE:</b><p>As soon as the engine can draw a direct line of sight from anywhere within its current "(BSP) leaf" to anywhere within another (BSP) leaf, the entire contents of that other (BSP) leaf are rendered.</p></td>
 </tr>
</table>

______________________
Structural brushes
------
We can derive from the test scenarios above that while portals divide our map up into (BSP) leaves, they themselves are not blocking line of sight. What actually is blocking line of sight are the **structural brushes** in our map. These, in turn, directly influence the placement of additional portals, which further divide our map into smaller (BSP) leaves. 
 
<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_vis.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is our second test scenario with a misaligned structural brush.</i></td>
 </tr>
</table>

In the scenario above we can see that our now shortened and moved structural brush (in orange) doesn't adhere to the default portals in the centre anymore. This results in additional portals being created by the engine at those edges of the brush that are not connected to any portal. These are not always in our favour as we can see in the images below.
<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_grid.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0002.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is our second test scenario as a simplified grid image and in-game shot.</i></td>
 </tr>
</table>

While the structural wall still blocks line of sight for the player to I0:L3, the portal mesh isn't effective anymore. 
The (BSP) leaf which the player is currently in (G6:L11) extends past the plane of the structural wall (H-I). For that reason, it is possible for the engine to draw a direct line of sight in-between G6:L11 and I0:L3. That, in turn, prompts the engine to render the detail contents for the player although they don't actually see them.
<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="128"> </td>
  <td><b>REMEMBER:</b><p>As soon as the engine can draw a direct line of sight from <b>anywhere</b> within its current (BSP) leaf to <b>anywhere</b> within another (BSP) leaf, the entire contents of that other (BSP) leaf are rendered.</p></td>
 </tr>
</table>

______________________
Hint brushes
------

In a regular map it's not realistic to have all of our structural brushes aligned with the default portals. Nevertheless, since we still want to ensure stable performance, we need to find a way to fix these problems. Luckily, the engine provides an option to manually create portals in our map by placing **"hint"** brushes. 
To manually place a portal, we can create a new brush with one face in the plane we want our portal to be in. To all faces of that brush we assign `common/hintskip`, except for the face where we want our manual portal to be. To that face we assign `common/hint`.
<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3.png"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3_vis.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is our third test scenario with a manual hint brush portal.</i></td>
 </tr>
</table>

Our second test scenario was lacking effective visibility blocking, so we added a manual hint brush portal as we can see in the images above. These manual portals behave exactly the same way as other portals, which is why our entire map is now divided along the structural wall. This, in turn, prevents the engine from rendering the detail in I0:L3, as we can see in the images below.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario3_grid.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0003.png"></td>
 </tr>
 <tr>
  <td colspan="2"><i>This is our third test scenario as a simplified grid image and in-game shot.</i></td>
 </tr>
</table>



