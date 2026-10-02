---
description: A Unit should be animated when moving
---
## Content

- Michel should walk, a Wagon (TBD) should "roll", etc.
- Idle animation ?

## ToDo

- [ ] Animate Michel when idle
- [ ] Animate Michel when moving
- [ ] Rationalize/Refactor sprite loading to avoid hardcoding VARIANT_COUNT for each of them

## Lessons Learned/Next steps

- tu fais un component Move et tu mets tout dedans, position de départ, position d'arrivée, vitesse, progression et t'as juste à faire un system neutre qui lira ça et un mute sur le transform, ça marchera pour toutes tes unités qui le porte
