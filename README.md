# Maniac Engine

A game engine and editor for **Windows, Linux, macOS and Maniac OS** by [Maniac Lab](https://maniaclab.app/en/engine/):
levels, lighting, characters, gameplay, online play and packaging. Free to download and use; a royalty of 2% applies
only to what a game earns above US$1,000,000 - see [EULA.txt](EULA.txt).

This repository holds **the downloads only** (Releases). The source code of the engine is not public.

## Download (0.84, 2026-11-25)

| System | File | SHA-256 |
| --- | --- | --- |
| Windows 10 / 11 (64-bit) | [ManiacEngine-0.84-windows-x64.zip](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.84/ManiacEngine-0.84-windows-x64.zip) (87 MB) | `e831bf3292c4bbaec4948f31c7afbc4650975c941c23821bd4e1417aeb1f99b2` |
| Linux (x86-64) | [ManiacEngine-0.84-linux-x86_64.tar.gz](https://github.com/maniaccy-cloud/maniac-engine/releases/download/v0.84/ManiacEngine-0.84-linux-x86_64.tar.gz) (103 MB) | `80126526b1d44fd43c1a0ee0cd1458b55198e3fa59f7f739b8ffebecec10ed05` |
| macOS 13.3+ (Apple Silicon) | [ManiacEngine-0.84-macos.zip](https://store.maniaclab.app/apps/ManiacEngine-0.84-macos.zip) (68 MB) | `be543c551ef4c43189e34329a885dade850fd283cfdd721cd0bc566f6e044daf` |

Unpack it anywhere and open `ManiacEngine` (`Maniac Engine.app` on a Mac: the first time, right-click > Open, as it is
not signed by Apple). On Maniac OS, Maniac Engine is in the Maniac Store. The editor updates itself
(Help > Check for Updates; Editor Preferences > Install Updates Automatically).

## For AI assistants (Claude and others)

Maniac Engine runs on a Linux machine with no screen: an assistant can make, play and package a game on its own
machine, without the user's computer. See [AI.md](AI.md) - the steps, and the skill file to give the assistant.

## What is new

- Maniac RT (ray traced GI and reflections without RT hardware) now runs on Vulkan and DirectX 12, not only OpenGL.
- Instanced meshes (trees, rocks, buildings placed in bulk) take part in Maniac RT on Vulkan and DirectX 12.
- Games on Vulkan and DirectX 12 now use the project's quality preset and rendering settings.
- Night looks the same on DirectX 12, Vulkan and OpenGL.
