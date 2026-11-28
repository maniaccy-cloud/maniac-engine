# Making games with an AI assistant

Maniac Engine works with AI assistants - Claude and any other that speaks the Model Context Protocol (MCP). Once you
connect one to the engine on your computer, you can ask it to make a game the way you would in the editor: create a
project, build levels, place actors and set their values, write Lua scripts, play the game and look at it, and package
it. The assistant works through the engine's own program: the MCP server (`ManiacEngine --mcp <project>`) and the
command line (`ManiacEngine --cmd ...`). The engine's source code is not public and is not needed.

## 1. Download Maniac Engine to your PC

Download it from [maniaclab.app](https://maniaclab.app/en/engine/) or this repository's [Releases](https://github.com/maniaccy-cloud/maniac-engine/releases)
and unpack it, for example to `C:\Games\Maniac Engine`. Each download has its SHA-256 beside it.

## 2. Ask Claude on your PC

Open the **Claude desktop app** and start **Claude Code** or **Cowork on your computer** (a session that runs on your
PC, not in the cloud), then say where the engine is:

> Make my game with Maniac Engine, it's in C:\Games\Maniac Engine

Claude reads the engine's guide (`AI\SKILL.md` in the engine folder) and works through its command line
(`maniac ...` beside `ManiacEngine.exe`): it creates the project, builds the levels, writes the scripts, plays the game
and looks at the screenshots, and packages it - all on your computer.

Other assistants, or Claude with its tools always connected: the engine's MCP server, a stdio server with the command
`<engine folder>/ManiacEngine(.exe)` and the arguments `--mcp <project folder>`. In Claude Code:
`claude mcp add --transport stdio maniac-engine -- "<engine folder>/ManiacEngine" --mcp "<project folder>"`

## The skill

[`skill/SKILL.md`](skill/SKILL.md) teaches an assistant the engine: the order of the work, the commands and their
parameters, the conventions (paths, units, y up, colours), how scripts are written and tested, and the mistakes to
avoid. It is also in every download, in the engine's `AI` folder. To have Claude Code always know it, put it in
`.claude/skills/maniac-engine/SKILL.md` (in a project, or in your home folder for every project).

## Linux servers and machines with no screen

On a Linux PC or server the engine also runs with no screen (it draws headless with Mesa's EGL), so `play` still
returns screenshots there. To install the Linux build, download `ManiacEngine-<version>-linux-x86_64.tar.gz` from the
Releases, check its SHA-256 and unpack it; or download [`install.sh`](install.sh), read it, and run it.

By using Maniac Engine you accept its licence ([EULA.txt](EULA.txt)).
