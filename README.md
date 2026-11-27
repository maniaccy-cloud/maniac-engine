# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.93, 2026-11-28)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.93-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.93/ManiacEngine-0.93-windows-x64.zip) (72 MB) | `a2162cd4bd75447d737c5026ddbad0c4d9b07bc71078e65021f733464aff09dd` |
| Linux (x86-64) | [ManiacEngine-0.93-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.93/ManiacEngine-0.93-linux-x86_64.tar.gz) (102 MB) | `260e42a581ea6ab0df64db14dafb8272be9e9ba59d98e8bfa1a72f75657426f3` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.93-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.93-macos.zip) (69 MB) | `4e6ffceea017d6f90b02c92a3612687bee558945c2b8dc2bbed0a1a305ffc31d` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.93.mapp](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.93/ManiacEngine-0.93.mapp) (101 MB) | `7f4c9faa64cc32e3b1031f44fea97868db0758fd194470dccb9a00267a5614ed` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- The whole editor viewport on Vulkan and DirectX 12: every view mode, Play and Simulate with the game's UI, Movie Render Queue
- A vector as a table wherever three numbers are asked for: Building.can_place("Wall", {0, 0, 0}, ...)
- Fixes: actor.fracture on the command line no longer crashes, actor:launch throws a swimmer across the water, Input.rebind_key warns in the log
