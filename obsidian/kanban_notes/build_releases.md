---
description: Build and Push a release on GitHub for Linux and Windows targets
---
## Content

- To be able to share the GAME, we will have to build multiple versions of the GAME
- So we need a workflow (Makefile ?) for that
	- Build a binary per platform
	- Push the binaries in a GitHub release
	- Handle releases (bump version)

## ToDo

- [x] Create a task to bump versions
- [x] Create a task for windows/linux builds
- [x] Push on GitHub (or wherevererererere)

## Lessons Learned/Next steps

- We must switch to mise-en-place/fnox to strenghten variables and secret management, and also tasks -> [[migrate_to_mise-en-place_and_fnox]]
