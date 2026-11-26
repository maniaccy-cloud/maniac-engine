# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.89, 2026-11-26)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.89-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.89/ManiacEngine-0.89-windows-x64.zip) (91 MB) | `3ad050a247af0272cb18b313cadf15e99d4c37818415429a2fac24c51fc7a070` |
| Linux (x86-64) | [ManiacEngine-0.89-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.89/ManiacEngine-0.89-linux-x86_64.tar.gz) (107 MB) | `5c622731fdaa27dc691cb9f9cc9ae9f661af84ae9252c7366de87ba415dc12b6` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.89-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.89-macos.zip) (71 MB) | `1c4bd9529e3598e855bec99314e117ecb87c1d316d88dc7089057014b6b22c7e` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.89.mapp](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.89/ManiacEngine-0.89.mapp) (106 MB) | `6911866212f4cd16f0367d89f0c910fba89c00c57a019ec96887d46bfdbbe2a1` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- Maniac Assets: the engine's marketplace (like Fab) - Window > Maniac Assets searches it, signs in with your Maniac ID and adds assets to the project; sell your own on maniaclab.app/assets
- Scripts change the weather and the level's settings while playing (Engine.set_weather, set_clouds, set_fog, set_sun, set_sky, set_post) and reach every component (actor:set_component)
- The command line knows all 83 components and places the 2D actors and the weather; play --quality low for fast play-tests
- Clouds without trails when the camera moves, leaves lit through by the lamps too (OpenGL, Vulkan, DirectX 12)
- Project Browser: templates and recent projects scroll; a hang now leaves a report of where it stopped
