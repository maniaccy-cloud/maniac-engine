# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.83, 2026-11-25)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.83-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.83/ManiacEngine-0.83-windows-x64.zip) (87 MB) | `dbcd57374931b40cfc47d2e9f56932e8824b32e182db717f85fcf9c73bdba8f6` |
| Linux (x86-64) | [ManiacEngine-0.83-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.83/ManiacEngine-0.83-linux-x86_64.tar.gz) (103 MB) | `d2982ed4e85b7be4ca3158fbb232540ecb0a79686e77eb6e0ff0495db464f507` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.83-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.83-macos.zip) (68 MB) | `0761f54d79f5ea6b37feac5fc86fd37ad11227631ae62bf731fbe6edc3216a64` |
| Maniac OS (.mapp, signed) | [ManiacEngine-0.80.mapp](https://store.maniaclab.app/apps/ManiacEngine-0.80.mapp) (96 MB) | `d9c15e5435c94fccb392a537a9cc69f1eb09c34d0c689ceb70a039dd65024860` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- Vulkan and DirectX 12: a lost graphics device now ends the game with a clear message; safer fences, buffers, swapchains and samplers.
- Maniac Royale and other big games no longer crash at the start of a match on DirectX 12 and Vulkan.
- Packaging never deletes an older good package; dedicated servers and Linux files are in the manifest and the archive.
- AI: State Trees no longer restart after a save; better paths with ladders, jumps and shortcuts.
- Animation: IK, root motion and blend space fixes.
- Data Tables ask before throwing away changes; Enhanced Input, touch, Movie Render Queue and localization fixes.
