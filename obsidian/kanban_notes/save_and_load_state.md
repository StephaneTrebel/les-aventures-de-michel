---
description: Save and Load Game "State"
---
# Content

## WHAT
We need to be able to save and load a game. The game "State" comprises :

- The Map
- Unit "State" (positions and remaining movement points)
- Turn count

## HOW

- Have a GameState dedicated Resource that will host all the saved data
    - Initialized at Startup
    - Reinitialized by Game Load action
    - Dumped into save file by Game Save action
- We need a save format (JSON ? Binary ? Something else ?)

## WHEN

- In the Menu, buttons to save and load
- Saving or loading a game should give the Player some feedback before returning to the game

## To Do

- [ ] Add a "Save" button in the Menu
- [ ] Add a "Load" button in the Menu
- [ ] Handle `GameState` resource (init, update, overwrite by load, etc.)
- [ ] Saving State upon clicking "Save" button:
    - [ ] Open the save file (always the same for now)
    - [ ] Write game "State" (as defined in [[#WHAT]])
    - [ ] Player feedback "The game has been saved"
- [ ] Loading State upon clicking "Load" button:
    - [ ] Open the save file (always the same for now)
    - [ ] Read game "State" (as defined in [[#WHAT]])
    - [ ] Update game "State" accordingly
    - [ ] Player feedback "The game has been loaded"

## Lessons Learned/Next steps

- When starting a game, do not automatically start a new game: present the option of loading an existing game, or starting a new one
- Propose to name the saved/loaded file (File explorer ? See `dirs` crate) -> Propose multiple (but fixed) save slots
