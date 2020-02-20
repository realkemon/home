Part 1: Visibility Blocking
=========

The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game. 
This part will walk you through how the engine processes visibility, so we are able to control exactly what the engine renders at any given time in our map.

[INSERT VIDEO HERE]

______________________
Basics
------
Let's begin with some good and bad news. The bad news is, that the engine doesn't simply render only what the player sees. The good news, however, is that we have full control over what the engine renders. For that, we need to understand some basics first.
______________________
![Würzburg Radar](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map.png) | ![Würzburg Radar VIS](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/map_vis.png)
:---:|:---:

*This is a direct comparison of Würzburg Radar with its (BSP) leaves visualised by the portal view plugin in Radiant.*
______________________

During a `-vis` compile, your map automatically gets split up into several uniform cubes. Those cubes are separated from each other by the colourful planes that you can see in the comparison images above. To have the correct terminology, let's refer to the cubes as **"(BSP) leaves"** and to the colourful planes as **"portals"**.
Because our entire map is split up into those "(BSP) leaves", the player is in one of them at all times. The engine then makes a list of all other "(BSP) leaves" to which it can draw a direct line of sight to from its current "(BSP) leaf". It then renders everything that is within those "(BSP) leaves", whether the player can see it or not.
______________________
![Scenario1](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1.png) | ![Scenario1 VIS](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_vis.png)
:---:|:---:

*This is a test scenario which we will use to understand the basics of visibility blocking.*
______________________

In the test scenario above you can see that the "portals" divide our map into 4 "(BSP) leaves". The map includes a structural wall (in orange) and detail brushes (in red). The structural wall is perfectly aligned with one of the "portals" as we can see in the 2D workspace views. Below we have the same scenario in a simplified grid image (top-down) and in-game shots.
* The red cubes are our detail brushes.
* The grey block is our structural wall.
* The blue lines are our "portals".
* The highly energetic owl is our player.
______________________
![Scenario1 grid1](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid1.png) | ![Scenario1 grid2](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario1_grid2.png)
:---:|:---:
![Scenario1 ingame1](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0000.png) | ![Scenario1 ingame2](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/shot0001.png)

*This is our artificial test scenario as a simplified grid image and in-game shots.*
______________________

The images above show that if the player is within the "(BSP) leaf" A6:F11, all of the detail is being rendered. It doesn't matter whether or not the player actually sees the detail in G0:L4. However, as soon as the player moves over to the "(BSP) leaf" G6:L11, the contents of G0:L4 aren't rendered anymore. This is because the structural wall prevents the engine from drawing a direct line of sight in-between those two "(BSP) leaves".

<table style="background-color:#302429">
 <tr>
  <td>
    <img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png"> </td>
  <td>
    <b>To summarise, the basics of visibility blocking are:</b>
    <p>As soon as the engine can draw a direct line of sight from anywhere within its current "(BSP) leaf" to anywhere within another "(BSP) leaf", the entire contents of that other "(BSP) leaf" are rendered.</p>
  </td>
 </tr>
</table>

______________________
Structural brushes
------
The engine automatically generates additional "portals" along structural brushes if they are not aligned with the default "portals". These additional "portals" aren't always in our favour, as you can see in the scenario below. 
We still have a structural wall that blocks direct line of sight from the player to the detail blocks in I0:L3. However, this time the details are rendered, because the engine can draw a direct line of sight from the player's current "(BSP) leaf" to I0:L3.
______________________
![Scenario2](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2.png) | ![Scenario2 VIS](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_vis.png) | ![Scenario2 grid](https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/scenario2_grid.png)
:---:|:---:|:---:

*This is our second test scenario with a misaligned structural brush.*
______________________

Hint brushes
------

In a regular map it's not realistic to have all of our structural brushes aligned with the default "portals". Nevertheless, we still want to ensure stable performance, so we need to find a way to fix these problems. Luckily, the engine provides an option to manually create "portals" in our map by placing **"hint"** brushes.




