Part 1: Foundation
=========

<table>
 <tr>
  <td> <b>Index:</b><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md">Home</a><br>
   <a href="https://github.com/realkemon/home/blob/master/pages/tut_part1.md"><b>Part 1: Foundation</b></a>
   <ul>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_1.md">Visibility Blocking</a></li>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_2.md">Layout Sketch</a></li>
    <li><a href="https://github.com/realkemon/home/blob/master/pages/tut_part1_3.md">Structural Mesh</a></li>
   </ul>
 </td>
 </tr>
</table>

The comparison images below are essentially what we will cover in this tutorial part. They depict two scenarios of the exact same map. The only difference is the location of the map relative to the world. 

<table>
 <tr>
  <td></td>
  <td>Layout Sketch</td>
  <td>Structural Mesh</td>
  <td>Visibility Blocking</td>
 <tr>
  <td><b>Scenario 1:</b> Map <b>not</b> aligned with default portals</td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/tutorial_layout_moved.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/layout_moved.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/layout_moved_vis.jpg"></td>
 </tr>
 <tr>
  <td><b>Scenario 2:</b> Map aligned with default portals</td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/tutorial_layout.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/layout_clean.jpg"></td>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/pages/tut_part1/layout_clean_vis.jpg"></td>
 </tr>
</table>

We will start this tutorial part by understanding how the engine processes visibility. Short version: The engine splits the map up into portals, which are visualised as the colourful planes in the 3rd images. We can see that although the brushes are the same, their placement in the world has an effect on those portals. 
After we understand what those portals are and what they do, we will move on to the layout sketch. For that, we will cover some basics that will enable us to create a good layout sketch with which we can already anticipate gameplay and performance.
Once we are happy with our layout sketch, we will start to build our map in Radiant. There are some things that we need to keep in mind when doing that, which is why we are going to go through that process step by step.

<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="256"> </td>
  <td><i>The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game</i>.</td> </tr>
</table>

[:arrow_backward: Back](https://github.com/realkemon/home/blob/master/pages/tutorials.md) | [:arrow_forward: Proceed](https://github.com/realkemon/home/blob/master/pages/tut_part1_1.md)
:---:|:---:
