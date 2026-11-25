# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.86, 2026-11-25)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.86-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.86/ManiacEngine-0.86-windows-x64.zip) (89 MB) | `a123663c86cb838f8ac54d1bc708e0c54d85cf386efa571bc4bc8b8596074eac` |
| Linux (x86-64) | [ManiacEngine-0.86-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.86/ManiacEngine-0.86-linux-x86_64.tar.gz) (105 MB) | `fcff7ee1059b5d2ffbc4a7515f4a62e0b039ca1701e6ad029e0178b2f9046c1d` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.86-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.86-macos.zip) (70 MB) | `9197c19261d6ccd184a2f22803bd4f332435a9f9fc339825086a6b715ca67ba4` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.86.mapp](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.86/ManiacEngine-0.86.mapp) (104 MB) | `0ca0e17bc0778d0c574f4a7615b58285624b9860ed01646eb6bdbacaba479c47` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- DirectX 12 is much faster: shaders compiled ahead of time (shader model 6), about 25% more FPS in Maniac Royale.
- Vulkan and DirectX 12 now draw everything OpenGL draws: Reflection Captures, GPU particles, Virtual Shadow Maps and Maniac Mesh.
- Maniac RT: a second bounce of light from what the camera sees, and reflections with real colours.
- Also on Vulkan and DirectX 12: depth of field, motion blur, light shafts, SSR, SSGI, contact shadows, decals, morph targets, cloth, hair and upscaling.
