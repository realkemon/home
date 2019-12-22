Part 1: Talking points
=========

album: https://imgur.com/a/zAJ4N28
* collecting visual references
* layout sketch (this map does not serve as map layout tutorial -> singleplayer map)
  - important to spend a lot of time and thoughts on the layout
  - play it through in your head over and over
  - iterate through the layout and continuously improve until you're happy 
* start with empty skybox
* show `_blocksize` grid
* VIS compile to introduce portal view plugin
* change `_blocksize` value
* create simple structural wall with detail brushes on other side
  - #1 one completely misaligned to `_blocksize` grid
  - #2 one too short height
  - #3 one too short width
  - #4 one aligned with `_blocksize` grid
* add `hint` brushes closing the gap for #2 and #3 -> useless
* change `hint` brushes to go orthogonally -> now also sealed off
* load `railgun_final.map` to show bad examples
  - bunker entrances are structural
  - track switch is structural
  - CP stairs are structural
  - no structural block between Allied spawn and track switch
  - no structural block between Axis spawn and Depot Yard
  - ineffective use of `hint` brushes
  - ineffective structural brush at cabinets
  - gap in structural mesh at crane area due to small grid
 * **lessons**
  - start with structural mesh
  - keep structural mesh aligned with `_blocksize` grid
  - use big gridsizes for structural brushes to avoid unintended gaps
  - always check the portal view plugin to evaluate the structural mesh
  - efficient use of `hint` brushes
* start minimalistic blockout / structural mesh of tutorial map
* VIS test with detail brushes
* hint brush placement (DOs and DONTs)
* hint vs subtle hint
* think about gameplay timings and routes
  - how long does it take the attacker to get somewhere and the defender to set up position there
  - not applicable here because it's a singleplayer tutorial map
