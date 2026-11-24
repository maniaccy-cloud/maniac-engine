# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.80, 2026-11-24)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.80-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.80/ManiacEngine-0.80-windows-x64.zip) (82 MB) | `9c229b3ebb6dc458020d925deefa2b5527595d16f83747c0ada45da2bfb38918` |
| Linux (x86-64) | [ManiacEngine-0.80-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.80/ManiacEngine-0.80-linux-x86_64.tar.gz) (98 MB) | `28ea20db5b0ff35f3b57817fe97d36da9d673ce3f53a81e9ed610e7dbcbbb314` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.80-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.80-macos.zip) (65 MB) | `b89427c25fb0351476eee9607b22c1df0a9f3d03232bcfb4eab309224b326837` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.80.mapp](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.80/ManiacEngine-0.80.mapp) (96 MB) | `d9c15e5435c94fccb392a537a9cc69f1eb09c34d0c689ceb70a039dd65024860` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- Maniac GI on Epic: our own voxel GI round the camera - the sky hidden under roofs and trees, light from what the screen does not show, on cards without ray tracing.
- 2D grows up: lights with soft shadows and normal maps, 2D physics with joints, terrains, parallax, lines and polygons, a 2D camera, and a 2D Platformer template.
- A new sea: waves round the camera, ripples at their own speeds, a sun glitter path, no sparkle in the distance.
- Steadier pictures on AMD cards: no black blocks, no objects popping in and out, far shadows that move smoothly with the sun.
- Cooking and pak files: content cooked ahead, packed into paks, chunks, releases and patches.
- Enhanced Input, a camera system with shakes and modifiers, Sequencer shots and the Take Recorder.
- Characters from sliders: faces that blink and talk, hair, clothing.
- AI at scale: State Trees, EQS, Smart Objects and crowds; online services for sessions and friends.
- Updates install themselves: downloaded and checked while you work, put in place when you close the editor.
- Windows, Linux (Ubuntu 22.04 and newer), Maniac OS and macOS (Apple Silicon).
- Runs with no screen on Linux: AI assistants can make, play and package a game on their own machine.
- Over 90 fixes: saving can no longer lose a level, a package or an asset; 2D bodies, root motion, paks and patches checked again.
