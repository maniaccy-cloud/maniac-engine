# Maniac Engine for AI assistants

An AI assistant - Claude or any other that can run programs or speaks the Model Context Protocol - can make a game
with Maniac Engine the way a person does in the editor: create a project, build levels, place actors and set their
values, write Lua scripts, play the game and look at it, and package it. It works through the engine's own program:
the command line (`ManiacEngine --cmd ...`) and the MCP server (`ManiacEngine --mcp <project>`). The engine's source
code is not public and is not needed.

## On the assistant's own machine (no user's computer)

Maniac Engine runs on a Linux machine **with no screen**: there it draws headless (an EGL pbuffer with Mesa; llvmpipe
when there is no graphics card), and `play` still gives screenshots. So an assistant working in its own Linux sandbox
installs the engine there and does the whole job itself:

```
curl -fsSL https://raw.githubusercontent.com/maniaccy-cloud/maniac-engine/main/install.sh | sh
E=~/.local/share/ManiacEngine/ManiacEngine
$E --cmd version --json
$E --cmd project.create ThirdPerson MyGame --location ~/Games --json
$E --cmd actor.spawn PointLight --name Lamp --position 0,3,0 --project ~/Games/MyGame --json
$E --cmd play --frames 300 --project ~/Games/MyGame --json          # the log, the scripts' checks, a screenshot
$E --cmd package --project ~/Games/MyGame --json                    # a Linux game, ready to hand out
```

`install.sh` downloads the newest Linux build from this repository's releases, checks its SHA-256, unpacks it into
`~/.local/share/ManiacEngine` and installs Mesa's EGL when it can (`libegl1 libgl1-mesa-dri`). The Linux build runs on
glibc 2.35 and newer (Ubuntu 22.04, Debian 12 and later). The assistant then gives the user the project folder and the
package. (A Windows game is packaged on Windows: the user opens the project in their own Maniac Engine and packages
it, or uses Package Project.)

## On the user's computer

Install Maniac Engine from [maniaclab.app](https://maniaclab.app/en/engine/) and connect the assistant to it:

- **Claude Code**: `claude mcp add --transport stdio maniac-engine -- "<engine folder>/ManiacEngine" --mcp "<project folder>"`
- **Claude Desktop**: the same `maniac-engine` server in `mcpServers` of `claude_desktop_config.json`
  (`"command": "<engine folder>/ManiacEngine.exe", "args": ["--mcp", "<project folder>"]`).

## The skill

[`skill/SKILL.md`](skill/SKILL.md) teaches the assistant the engine: the order of the work, the commands and their
parameters, the conventions (paths, units, y up, colours), how scripts are written and tested, and the mistakes to
avoid. For Claude Code put it in `.claude/skills/maniac-engine/SKILL.md` (in a project, or in your home folder for
every project); in Claude's apps, add it as a skill.

By using Maniac Engine you accept its licence ([EULA.txt](EULA.txt)).
