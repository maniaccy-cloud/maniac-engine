# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.90, 2026-11-27)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.90-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.90/ManiacEngine-0.90-windows-x64.zip) (92 MB) | `cb1f4a6388102895d1027ceb9d2660dcb26468a13a69d0b75d64ca1801151188` |
| Linux (x86-64) | [ManiacEngine-0.90-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.90/ManiacEngine-0.90-linux-x86_64.tar.gz) (91 MB) | `91feb99914c1ed4eced912806009c4384a78e8cd9cd90be656f632a01d2b364c` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.90-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.90-macos.zip) (71 MB) | `e6a8c71a44aecd3884d97ee037fbfdb021ef7c47d3f7a2baf3104196923cc8f6` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- 2D Top Down template: a Y-sorted meadow, a Character Body 2D hero, slimes that find their way (Navigation Agents 2D), gems with sparks (Particles 2D)
- Skeleton 2D inverse kinematics: two-bone (an arm reaches a target) and look-at, in Details and from Lua (actor:set_ik2d)
- One-way colliders and one-way tiles are one-way for the 2D rigid bodies too
- The same picture on OpenGL, Vulkan and DirectX 12: metered auto exposure (rain, night), the sea's waves to the horizon, the same refraction
- Weather like Unreal's: an overcast sky takes the sun at every quality, larger clouds, dimmer clouds at night; play-tests without a graphics card keep the picture
