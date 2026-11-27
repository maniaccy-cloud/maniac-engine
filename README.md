# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.92, 2026-11-27)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.92-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.92/ManiacEngine-0.92-windows-x64.zip) (72 MB) | `1dfe8437aaf797f3689fdbb54e5126bcfdcafcccdd7ed74a183af3107d2a28c5` |
| Linux (x86-64) | [ManiacEngine-0.92-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.92/ManiacEngine-0.92-linux-x86_64.tar.gz) (102 MB) | `ba0e15beed0ec7828e1717c50c1c1d1a772c7a289dbe46911fbcf4f24c0eea4f` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.92-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.92-macos.zip) (69 MB) | `f27d597c7c10d03b306b376b16b0f933792d99a0531e2b44740cea777187552d` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.92.mapp](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.92/ManiacEngine-0.92.mapp) (100 MB) | `e18da5ddb036d031ea3fccb1647772c4af45d796a459e83ab26ab36f7b513aa9` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- The editor's viewport drawn by Vulkan or DirectX 12 itself, with its grid and the selection's outline
- Full gamepad support: PlayStation, Xbox and Switch button names, vibration, the light bar, the DualSense's adaptive triggers, motion and the touchpad
- Network emulation: incoming packet loss (the Bad preset now loses packets both ways)
- Fixes: bots no longer hit themselves with the Launcher, no white strip from rain by the camera, packaged games without the documentation
