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

The comparison images below show that although the brushes themselves are the same, their placement, as visible in the grid images, is different. This leads to the visible difference in the 3rd images. Those colourful planes are portals and are used by the game to decide what to render at any given time.
After we understand what those portals are and do, we will move on to the layout sketch. For that, we will cover some basics that will enable us to create a good layout, which we can use to anticipate gameplay and performance in the map.
Once the layout sketch is decent, we will start to build our map in Radiant. There are some things that we need to keep in mind when doing that, which is why we are going to go through that process step by step.

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


<table>
 <tr>
  <td><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/avatar.png" width="256"> </td>
  <td><i>The idtech3 engine is from a time where videogames didn't come with an amount of detail that you can see in modern games. While your computer hardware has improved substantially, the effectiveness of the engine hasn't so much. That is why even with modern computers we need to be mindful of performance when creating maps for the game</i>.</td> </tr>
</table>

[:arrow_backward: Back](https://github.com/realkemon/home/blob/master/pages/tutorials.md) | [:arrow_forward: Proceed](https://github.com/realkemon/home/blob/master/pages/tut_part1_1.md)
:---:|:---:
