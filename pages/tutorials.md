Tutorials
==========

<table>
 <tr>
   <td><b>Index:</b><br>
    <ul>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/level_design.md#background">Background</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/level_design.md#own-levels">Own Levels</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/level_design.md#map-overhauls">Map Overhauls</a></li>
     <li><a href="https://github.com/realkemon/home/blob/master/pages/level_design.md#tutorial-series">Tutorial Series</a></li>
    </ul>
 </td>
 </tr>
</table>


**UNDER CONSTRUCTION**

Section 1: basic mapping
----------
* Part 1: References, Layout, Structural vs Detail, Hint brushes
* Part 2: First detail pass
* Part 3: Manual terrain creation in Radiant using brushwork
* Part 4: Second detail pass

Section 2: entities
----------
Part 5: **func_door_rotating** - team door
* possibly with areaportals if I get them to work

Part 6: **func_rotating** - radar

Part 7: **func_constructible** - bridge
* multi-tiered constructibles

Part 8: **command post**
* neutral constructibles

Part 9: **health and ammo cabinets**
* conditional functionality when linked with CP

Part 10: **CP spawn**
* conditional functionality when linked with CP

Part 11: **script_mover** - mine cart
* button activation
* simple script_mover without escorting

Part 12: advanced **func_constructible** - Bergen-like generator
* conditional moving parts (pistons, wheels, belts, gauges, etc.)
* conditional remapshaders
* conditional sounds 
* linked effects on other entities -> gate

Part 13: conditional **script_mover** - gate
* lever activation
* conditional functionality when linked to generator
* abort movement and change direction (open/close)

Part 14: **func_explosive** - truck barrier

Part 15: advanced **func_explosive** - Bergen-like generator
* conditional explosions, smoke, flames

Part 16: conditional **script_mover** - castle drawbridge
* rotate open in a falling manner when generator destroyed

Part 17: escortable **script_mover** - truck
* start destroyed
* only move when player in trigger
* stop in front of built truck barrier and unbuilt bridge
* reverse few metres in castle

Part 18: **AT gun**
* rotate towards target
* shoot and destroy truck

Part 19: **document run**
* conditional red outline on truck bed when escort done

Part 20: escortable **script_mover** - tank
* rotate turret
* shoot animation

Part 21: forward **flag spawn**

Part 1: Talking points
---------

album: https://imgur.com/a/zAJ4N28
* collecting visual references
* layout sketch
* minimalistic blockout / structural mesh (bridges, ramps and other elements needed for gameplay test -> detail)
* VIS test with detail brushes
* 'show **blocksize**' option in Radiant (show how to change `_blocksize`)
* align blockout brushes to blocksize
* hint brush placement (DOs and DONTs)
* hint vs subtle hint
