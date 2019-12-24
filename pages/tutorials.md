Tutorials **[WORK IN PROGRESS]**
==========

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


Parts
==========

Section 1: world
----------
* [Part 1: References, Layout, Structural vs Detail, Hint Brushes, Gameplay Blockout](https://github.com/realkemon/home/blob/master/pages/tut_part1.md)
* [Part 2: T-Junctions, Initial Detail Pass](https://github.com/realkemon/home/blob/master/pages/tut_part2.md)
* [Part 3: Manual Brushwork Terrain, Blending Shaders](https://github.com/realkemon/home/blob/master/pages/tut_part3.md)
* [Part 4: Skybox, Ambient vs Minlight, Fog, Atmospheric Effects, Dynamic Atmospheric Effects](https://github.com/realkemon/home/blob/master/pages/tut_part4.md)
* [Part 5: Lighting, Light vs LightJunior, SurfaceLight, Coronas, Dynamic Lighting](https://github.com/realkemon/home/blob/master/pages/tut_part5.md)


* Part 8: Water _(basic; foam blend; deformVertex; waterfall)_
* Part 4: Second detail pass
* Part 9: Atmospheric effects _(fog; precipitation; dynamic precipitation)_ 
* Part 10: Sounds _(conditional; world; voice commander; news)_
* Part 11: Limbo cams
* Part 12: Win conditions and intermission cam

Section 2: entities
----------
* Part 13: Team door _(func_door_rotating; possibly with areaportal)_
* Part 14: Rotating radar _(func_rotating)_
* Part 15: 2-tier bridge _(multi-staged func_constructibles)_
* Part 16: Command post _(neutral constructibles)_
* Part 17: Cabinets _(conditional functionality when linked with CP)_
* Part 18: CP spawn _(conditional functionality when linked with CP)_
* Part 19: Mine cart _(button activated simple script_mover)_
* Part 20: Door generator _(conditional moving parts, remapshader, sounds)_
* Part 21: Door _(lever activated; linked to generator; abort and change movement direction)_
* Part 22: Dynamitable Truck barrier _(func_explosive)_
* Part 23: Satchelable Door generator _(conditional moving parts, debris, flames, smoke)_
* Part 24: Castle drawbridge _(conditional script_mover; rotate open in a falling manner; linked to generator)_
* Part 25: Escortable truck _(advanced script_mover)_
* Part 26: AT gun _(automatically rotate towards target; shoot and destroy truck)_
* Part 27: Document run objective _(conditional red outline on truck bed)_
* Part 28: Escortable tank _(similar to truck, tighter corners; rotate turret and shoot)_
* Part 29: Forward flag spawn
