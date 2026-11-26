# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.88, 2026-11-26)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.88-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.88/ManiacEngine-0.88-windows-x64.zip) (91 MB) | `211accd6ff65ae9acb9d9e9b7b05d1cc09e8977665cc790f2f69d1f777c57e9d` |
| Linux (x86-64) | [ManiacEngine-0.88-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.88/ManiacEngine-0.88-linux-x86_64.tar.gz) (90 MB) | `364f3631f0b7b312bfbb8749e0afb18c55969999740bccbcf0049757890ca469` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.88-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.88-macos.zip) (70 MB) | `6bba21bf8aa6820e0fe22f2e527922c666a297004fa9eae52824a577e7a1aa80` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- 2D like Godot: Character Body 2D (move_and_slide, slopes, one-way and moving platforms), exact 2D shapes, box and circle casts
- Tile shapes (slopes, half tiles), one-way and animated tiles, Y-sort for top-down and isometric games
- 2D navigation (regions, agents with avoidance, grid paths), Particles 2D and Skeleton 2D (cutout animation)
- The look of Unreal: a sea without a white mirror, height fog in the sky's colour, cumulus clouds, weather (rain, snow, puddles)
- Fixes: Movie Render Queue on its own copy of the level, lighting bakes kept when a build fails, input, animation sync, audio, saves, Vulkan / DirectX 12 UI
