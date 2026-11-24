---
name: maniac-engine
description: Make and change games with Maniac Engine (a C++/OpenGL game engine with Lua scripting and Maniac Graph visual scripting) through its command line (ManiacEngine --cmd, maniac) or its MCP server (ManiacEngine --mcp). Use when the user wants to create a Maniac Engine project, build or edit levels, place actors and set their values, write Lua scripts or graphs, import or create assets, check, play-test or package a Maniac Engine game.
---

# Making games with Maniac Engine

Maniac Engine is closed source: work only through its tools (the MCP tools, or the command line), its documentation
and its SDK headers. Never look for or ask for the engine's source code.

## Which tools you have

- **MCP** (preferred): tools named like `project_create`, `actor_spawn`, `actor_set`, `play`. Each answer is JSON:
  `{"ok", "command", "result", "log", "exitCode"}`, or `{"ok": false, "error": {"message", ...}}` with hints such as
  `didYouMean`, `fields`, `components`. Resources: `maniac://docs/<page>`, `maniac://api/lua.json`, `maniac://commands`,
  `maniac://project/info`, `/levels`, `/assets`.
- **Command line**: the same commands with dots: `ManiacEngine --cmd actor.spawn PointLight --position 0,3,0 --json`
  (Windows console: `maniac actor.spawn ...`, beside ManiacEngine.exe). `--json` for JSON answers; `<command> --help`
  for a command's parameters. `ManiacEngine --batch <project>` keeps a session open (JSON-RPC 2.0, one line each).
- Exit codes: 0 done, 1 failed, 2 wrong command/arguments, 3 no project, 4 done but the check found problems.

Start every session with `version` and `project_info` (or `project_open <folder>`). If a command says "No project",
open one or create one (`project_templates`, then `project_create`).

## The workflow

1. **Project**: `project_create` with a template - `Blank`, `ThirdPerson`, `FirstPerson`, `TopDown`, `UserInterface`,
   `Showcase` - and a name (letters, digits, `_`, at most 20 characters).
2. **Level**: `level_list`, `level_open`, or `level_create <Name> --template Empty|Blank|ThirdPerson|...`
   (`--startup true` makes it where the game starts).
3. **Actors**: `actor_presets` lists what `actor_spawn` places (Cube, PointLight, PlayerStart, Mannequin, Coin, Model,
   Trigger, ...). Give `position`, `rotation`, `scale`, `name`, `components` (as the level file writes them) and `script`.
4. **Values**: `actor_get <actor>` shows every component and value an actor has. `actor_set <actor> <path> <value>` sets
   any of them - the same values the editor's Details panel saves:
   - `pointLight.intensity 50`, `staticMesh.material.baseColor [0.8,0.1,0.1,1]`, `transform.position 0,2,0`,
     `transform.position.y 2`, `script.properties.speed 3`, `name NewName`.
   - `component_types` lists every component with its default values; `component_add` / `component_remove`.
   - World settings: `world_set sun.elevation 30`, `fog.density 0.02`, `post.exposure 1.2`, `sky.<field>`.
   A value the engine does not keep is refused and the actor is left as it was; read the error's `fields`.
5. **Scripts**: `script_create <Name> --text <lua>` (refused if the Lua does not compile), then `script_attach <actor>
   <script> --properties {...}`, or `actor_spawn ... --script Content/Scripts/X.lua`. Look functions up with `api_lua <words>`
   (or the resource `maniac://api/lua.json`) instead of guessing names.
6. **Assets**: `asset_types`, `asset_create <Type> <Name>` (Level, Script, Material, Material Graph, Widget, Maniac Graph,
   Animation Graph, Particle System, Behavior Tree, Data, Prefab), `asset_import <file>` (models .glb/.gltf, pictures,
   sounds, fonts), `asset_list <search>` (`type:mesh`, `path:Content/Props`, `is:missing`), rename/move fix references.
7. **Check**: `validate` (missing files, Lua and graph errors), `map_check` (floating scenery; needs a graphics card),
   `script_check`, `graph_compile`.
8. **Play-test**: `play --frames 300` runs the level as the game without a window and returns the log's errors and
   warnings, the scripts' output, `Engine.check` results, `Engine.report` values and a screenshot (the MCP answer
   includes the image). Look at the screenshot and the errors before saying something works.
9. **Tests**: levels in `Content/Tests/` are the project's tests; `test` runs `validate` and plays each one.
10. **Ship**: `package` (this computer's platform only) writes `Packaged/<Name>/`.

## Conventions

- Paths are relative to the project's folder with `/`: `Content/Scripts/Door.lua`. Engine content is
  `assets/...` (`assets/scripts/Coin.lua`, `assets/models/Fox.glb`); engine names: meshes `Cube Sphere Plane Cylinder
  Cone Rock`, models `Mannequin Robot Fox BrickWall`, sounds `Pickup Jump Land Wind Birds Campfire Fire Fountain Water`.
- Units: metres, degrees, seconds. **y is up.** Rotation `[pitch, yaw, roll]`. Colours 0..1. Vectors on the command
  line `x,y,z`, in JSON `[x, y, z]`.
- Actors are named by their Outliner name or `#uid` (names are not unique: when two match you get their uids). In
  `actor_get`/`actor_set` the form `Actor/component.field` works too.
- Every command that changes a level **saves it at once**. Pass `save: false` to batch several changes in an MCP/batch
  session, then `level_save`.
- Each new level gets the sun, sky, fog and post process actors; there is one of each per level.
- The first actor with a `character` component is the player. Put a `PlayerStart` where the game should begin.

## Lua scripts

```lua
local Spinner = {
    properties = {             -- fields of self; shown in Details; set per actor (script.properties.<name>)
        speed = 90,
        trigger_radius = 2,    -- with it, on_player_enter / on_player_exit are called
    },
}
function Spinner:start() self.hits = 0 end                       -- self is the actor
function Spinner:update(dt) self:rotate(0, self.speed * dt, 0) end
function Spinner:on_player_enter(player) Engine.log("hello") end
return Spinner
```

- Methods of actors: `self:position()` returns three numbers; `self:set_position(x, y, z)`; vec3/rotator/rgb are three
  numbers in calls and results, colours with alpha four.
- `Engine.find("Name")`, `Engine.find_all("Prefix")`, `Engine.spawn(...)`, `Engine.spawn_prefab(path, x, y, z, yaw)`,
  `Engine.after(seconds, fn)`, `Engine.log(...)`, `UI.text(...)`, `Input.action("jump")`, `Game` (a table all scripts share).
- For automated checks: `Engine.check(ok, "what")`, `Engine.report("key", value)`, `Engine.quit()`.
- The engine's example scripts are good starting points: `file_read assets/scripts/CoinGame.lua` (also `Coin.lua`,
  `JumpPad.lua`, `Patrol.lua`, `Rotator.lua`, `Follower.lua`, `LightSwitch.lua`).

## Writing files directly

`file_write <path> --text ... | --json ...` writes inside the project only, and refuses JSON that does not parse and
Lua that does not compile. Before writing a `.mlevel`, `.mprefab`, `.mui`, `.mgraph`, `.mmat` or `.mfx` by hand, read
`maniac://docs/FileFormats` and start from what `asset_create` makes. After writing, run `validate`
(and `graph_compile` for graphs; `graph_nodes <words>` lists node types and their pins).

## Pitfalls

- Do not invent component or field names: `actor_get` and `component_types` show the real ones (camelCase:
  `staticMesh`, `pointLight`, `rigidBody`, `skeletalMesh`, `castShadows`).
- `actor_spawn` puts the actor's pivot exactly at `position`; a cube of scale 1 has its centre there (y = 0.5 stands on
  the floor). Without `position` it is placed at the origin as the editor would (a cube on the ground, a light 2.5 m up).
- If the user has the same level open in the editor, the editor does not see your changes until it opens the level
  again, and saving there overwrites them. Ask the user to close the level or reopen it after you change it.
- `play`, `test` and `map_check` draw with OpenGL. On a Linux machine with no screen (no `DISPLAY`) the engine runs
  **headless** by itself (0.80): it draws into an EGL pbuffer with Mesa (llvmpipe when there is no graphics card) and
  the screenshots come back as usual - no X server, no xvfb. It needs Mesa's EGL (`libegl1 libgl1-mesa-dri` on
  Debian/Ubuntu; the error says so when it is missing). `--headless` forces it where a screen is.

## On your own machine (no user's computer needed)

If the engine is not installed where you work (a Linux sandbox, a cloud machine), install it from its public downloads
- GitHub, which such machines can usually reach:

```
curl -fsSL https://raw.githubusercontent.com/maniaccy-cloud/maniac-engine/main/install.sh | sh
~/.local/share/ManiacEngine/ManiacEngine --cmd version --json
```

Then make the game there with `--cmd` (or start `--mcp` yourself), play it headless and look at the screenshots, and
`package` it for Linux; give the user the project folder (zipped) and the package. A Windows game is packaged on
Windows (or by the user with their own editor from the project you give them).
- `package` only makes a game for the platform the engine runs on.
- A failed `play` (`ran: false`) has the reason in `errors` and `logTail`.

## Documentation

`docs_list` / `docs_read <page>`: Index, GettingStarted, AIAssistants, CommandLine (every command), LuaAPI (every Lua
function), CppSDK (C++ headers), FileFormats, ManiacGraph, UserInterface, Materials, Particles, Plugins, ContentBrowser.
