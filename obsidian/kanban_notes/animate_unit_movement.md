---
description: A Unit should be animated when moving
---
## Content

- Michel should walk, a Wagon (TBD) should "roll", etc.
- Idle animation
- `StartMovingComponent` for Move Animation Start
- `MoveAnimation` to handle Move Animation over time

## ToDo

- [x] Animate Michel when idle
- [x] Animate Michel when moving

## Lessons Learned/Next steps

- Rationalize/Refactor sprite loading to avoid hardcoding VARIANT_COUNT for each of them -> [[refactor_sprite_loading]]
- Store speed in entity at spawn ? Store different speed for different animation types (idle, moving, etc. ?) -> [[custom_unit_animation_speed]]
