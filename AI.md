# Making games with an AI assistant

Maniac Engine works with AI assistants - Claude and any other that speaks the Model Context Protocol (MCP). Once you
connect one to the engine on your computer, you can ask it to make a game the way you would in the editor: create a
project, build levels, place actors and set their values, write Lua scripts, play the game and look at it, and package
it. The assistant works through the engine's own program: the MCP server (`ManiacEngine --mcp <project>`) and the
command line (`ManiacEngine --cmd ...`). The engine's source code is not public and is not needed.

## 1. Install Maniac Engine

Download it from [maniaclab.app](https://maniaclab.app/en/engine/) or this repository's [Releases](https://github.com/maniaccy-cloud/maniac-engine/releases)
and unpack it. Each download has its SHA-256 beside it.

## 2. Connect your assistant

- **Claude (Claude Desktop, Cowork on your computer, Claude Code)**: add the **Maniac Engine plugin**
  (Customize > Plugins > Add > Upload plugin, with the plugin's zip). It has the skill that teaches Claude the engine
  and starts your installed engine's MCP server. Work in a session that runs on your computer.
- **Claude Code, by hand**: `claude mcp add --transport stdio maniac-engine -- "<engine folder>/ManiacEngine" --mcp "<project folder>"`
- **Other MCP apps**: a stdio server with the command `<engine folder>/ManiacEngine(.exe)` and the arguments
  `--mcp <project folder>`.

Then ask, for example: "Make a third-person game in Maniac Engine with coins to collect, and play-test it."

## The skill

[`skill/SKILL.md`](skill/SKILL.md) teaches an assistant the engine: the order of the work, the commands and their
parameters, the conventions (paths, units, y up, colours), how scripts are written and tested, and the mistakes to
avoid. The Maniac Engine plugin includes it. For Claude Code by hand, put it in `.claude/skills/maniac-engine/SKILL.md`.

## Linux servers and machines with no screen

On a Linux PC or server the engine also runs with no screen (it draws headless with Mesa's EGL), so `play` still
returns screenshots there. To install the Linux build, download `ManiacEngine-<version>-linux-x86_64.tar.gz` from the
Releases, check its SHA-256 and unpack it; or download [`install.sh`](install.sh), read it, and run it.

By using Maniac Engine you accept its licence ([EULA.txt](EULA.txt)).
