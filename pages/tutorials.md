Tutorials **[WORK IN PROGRESS]**
==========

# Overview
## Part 1: Foundations
<ul>
 <li>Visibility Blocking</li>
 <li>Layout Sketch</li>
 <li>Structural Mesh</li>
</ul>
## Part 2: Initial Detail Pass
<ul>
 <li>Performance Measures</li>
 <li>Manual Terrain</li>
 <li>Initial Details</li>
</ul>
 


_________________________________________
_________________________________________
<table>
 <tr>
   <td><b>Index:</b><br>
    <ul>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md#overview">Overview</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md#mechanics">Mechanics</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/tutorials.md#parts">Parts</a></li>
    </ul>
 </td>
 </tr>
</table>


Overview
==========

<table>
 <tr>
  <td><b>Engineer</b></td>
  <td>
   <ul>
    <li>Spawn in a sealed of medieval gatehouse.</li>
    <li>Open the gate. _(non-functional due to generator being destroyed)_</li>
    <li>Construct the generator.</li>
    <li>Open the gate. _(now functional)_</li>
    <li>Repair broken truck outside.</li>
    <li>Escort truck to the truck barrier.</li>
    <li>Dynamite the truck barrier.</li>
    <li>Continue escorting.</li>
    <li>Artillery gun across canyon shoots truck. _(truck destroyed, player takes damage)_</li>
    <li>Construct Command Post. _(linked health and ammo cabinets and forward spawn)_</li>
    <li>Replenish health and ammo at cabinets.</li>
    <li><b>Switch to Field-Ops.</b></li>
   </ul>
  </td>
 </tr>
 <tr>
  <td><b>Field-Ops</b></td>
  <td>
   <ul>
    <li>Truck can't proceed while AT gun is operational.</li>
    <li>Call in artillery on the AT gun. _(AT gun gets destroyed)_</li>
    <li>Call for an engineer. _(Omnibot engineer repairs bridge across canyon)_</li>
    <li>Engineer omnibot asks for ammo.</li>
    <li>Provide ammo to bot.</li>
    <li>Escort truck across bridge.</li>
    <li><b>Provide sniper cover.</b></li>
   </ul>
  </td>
 </tr>
 <tr>
  <td><b>Covert-Ops</b></td>
  <td>
   <ul>
    <li>Provide sniper cover for advancing truck.</li>
    <li>"Landmines reported in this area".</li>
    <li>Spot landmines.</li>
    <li>Call for engineer; "Clear the mines".</li>
    <li>Engineer omnibot starts defusing landmines.</li>
    <li>Truck proceeds along the road and stops in front of raised drawbridge.</li>
    <li>Pick up uniform from dead enemy.</li>
    <li>Go through side entrance _(teamdoor)_</li>
    <li>Use mine cart to proceed along the mine to the castle.</li>
    <li>Satchel the generator in the room to drop drawbridge.</li>
    <li>Capture the flag.</li>
    <li><b>Switch to medic.</b></li>
   </ul>
  </td>
 </tr>
 <tr>
  <td><b>Medic</b></td>
  <td>
   <ul>
    <li>Leave castle to the truck.</li>
    <li>Revive Engineer omnibot who died to landmines.</li>
    <li>Top them of with health packs.</li>
    <li>Escort truck into the castle gatehouse. _(reverses the last meter into parking)_</li>
    <li>Take the objective from table in hall and load it onto the truck.</li>
    <li><b>Switch to soldier with Panzerfaust.</b></li>
   </ul>
  </td>
 </tr>
 <tr>
  <td><b>Soldier</b></td>
  <td>
   <ul>
    <li>Panzerfaust approaching Axis tank.</li>
    <li>Pick up mobile MG from table in castle gatehouse.</li>
    <li>Set up defensive position on back of the truck.</li>
    <li>Mow down Axis omnibots as truck leaves castle.</li>
   </ul>
  </td>
 </tr>
</table>


Mechanics
==========

* Constructible door generator with moving parts. _(pistons, wheels, belts, gauges and remapshadered lights)_
* Script_mover door linked to generator. _(door controls with lever and gauge; abort and change open/close movement)_
* Escortable truck.
* Dynamitable truck barrier.
* Constructible command post with linked forward spawn and cabinets.
* Constructible 2-tier bridge.
* Artillery gun shooting at truck _(explosive damage only func_explosive)_
* Team door. _(possibly with areaportals if I can get them to work)_
* Mine cart. _(simple button activated script_mover)_
* Satchelable drawbridge generator with moving parts and debris. _(same layout as above plus flame and smoke when broken)_
* Capturable forward flag spawn.
* Document run objective.


Streams
==========

* [Part 1: References, Layout, Structural vs Detail, Hint Brushes, Gameplay Blockout](https://github.com/realkemon/home/blob/master/pages/tut_part1.md)
* [Part 2: T-Junctions, Initial Detail Pass](https://github.com/realkemon/home/blob/master/pages/tut_part2.md)
* [Part 3: Manual Brushwork Terrain, Blending Shaders](https://github.com/realkemon/home/blob/master/pages/tut_part3.md)
* [Part 4: Skybox, Ambient vs Minlight, Fog, Atmospheric Effects, Dynamic Atmospheric Effects](https://github.com/realkemon/home/blob/master/pages/tut_part4.md)
* [Part 5: Lighting, Light vs LightJunior, SurfaceLight, Coronas, Dynamic Lighting](https://github.com/realkemon/home/blob/master/pages/tut_part5.md)
* [Part 6: Water, Foam Blending, DeformVertex, Waterfall](https://github.com/realkemon/home/blob/master/pages/tut_part6.md)
* [Part 7: **Func_Rotating**, **Func_Penulum**, Landmine Problem](https://github.com/realkemon/home/blob/master/pages/tut_part7.md)
* [Part 8: **Func_Explosive** vs **Func_Constructible**, Command Map Icons](https://github.com/realkemon/home/blob/master/pages/tut_part8.md)
* [Part 9: **Func_Door_Rotating**, **Target Lock**, Team Door, Area Portals, Explosive-Door Combination](https://github.com/realkemon/home/blob/master/pages/tut_part9.md)
* [Part 10: **Func_Constructible**, Multi-Tiered Constructibles](https://github.com/realkemon/home/blob/master/pages/tut_part10.md)
* [Part 11: Command Post, Neutral Constructibles, CP spawn, Cabinets](https://github.com/realkemon/home/blob/master/pages/tut_part11.md)
* [Part 12: **Script_Mover**, Button Activation, Forwards-Backwards Movement, Conditional Sounds](https://github.com/realkemon/home/blob/master/pages/tut_part12.md)
* [Part 13: Door Generator, Linked Lever-Activated Door, Conditional Moving Parts, RemapShaders](https://github.com/realkemon/home/blob/master/pages/tut_part13.md)
* [Part 14: Capturable Flag Spawn](https://github.com/realkemon/home/blob/master/pages/tut_part14.md)
* [Part 15: Escortable **Script_Mover**, Truck and Tank](https://github.com/realkemon/home/blob/master/pages/tut_part15.md)
* [Part 16: Anti-Tank Gun, Automatic Rotation on Target, Missile Effects](https://github.com/realkemon/home/blob/master/pages/tut_part16.md)
* [Part 17: Document Run Objective](https://github.com/realkemon/home/blob/master/pages/tut_part17.md)
* [Part 18: Win Conditions, Limbo Cameras, Intermission Camera, .objdata, .arena](https://github.com/realkemon/home/blob/master/pages/tut_part18.md)
* [Part 19: Ambient Sounds, Voice Commander, Fireteam Locations](https://github.com/realkemon/home/blob/master/pages/tut_part19.md)
* [Part 20: Final Detail Pass, .ase Models, Compile Parameters](https://github.com/realkemon/home/blob/master/pages/tut_part20.md)
