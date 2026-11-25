# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.82, 2026-11-25)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.82-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.82/ManiacEngine-0.82-windows-x64.zip) (87 MB) | `28a0663bcad1f8e8834aa00f3979e632817187d923a1c15cfefb775dafbcf7f3` |
| Linux (x86-64) | [ManiacEngine-0.82-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.82/ManiacEngine-0.82-linux-x86_64.tar.gz) (102 MB) | `5becff037e26e6bcbcffc4e2c411aafa9e653d84dd08f1f6e0bf107857b1101b` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.82-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.82-macos.zip) (68 MB) | `e3e67018aaff2d1e43ed5ce990861435cdaee56d3303eb94cbb2ff6439a22bdf` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- Vulkan and DirectX 12 for games: shadows, lamps with their own shadows, TAA, ambient occlusion, volumetric clouds and fog, stars, normal maps and local lights.
- Maniac RT: ray-traced global illumination and reflections from distance fields and a surface cache, on any modern card.
- Virtual Shadow Maps: sharp shadows from your feet to the horizon, cached so only what moves is drawn again.
- Maniac Super Resolution and Maniac Frame Generation: more frames from the same card.
- Motion Matching: characters pick the right pose from your motion capture.
- Virtual reality through OpenXR, with VR Preview and a VR template.
- Multi-User Editing: build one level together, live.
- Landscape layers get Texture colour; many fixes.
