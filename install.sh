#!/bin/sh
# Maniac Engine for Linux from its public downloads (github.com/maniaccy-cloud/maniac-engine: the releases, no source):
# the newest version, checked against its SHA-256, unpacked into $MANIAC_ENGINE_HOME (~/.local/share/ManiacEngine).
# For Linux PCs and servers (also with no screen: the engine draws headless there with EGL, Mesa).
# Download this file, read it, then run it:  sh install.sh
set -eu
REPO=maniaccy-cloud/maniac-engine
DEST=${MANIAC_ENGINE_HOME:-$HOME/.local/share/ManiacEngine}
FEED=${MANIAC_ENGINE_FEED:-https://raw.githubusercontent.com/$REPO/main/latest.json}

say() { printf '%s\n' "$*"; }
need() { command -v "$1" >/dev/null 2>&1 || { say "install.sh: $1 is needed"; exit 1; }; }
need curl; need tar; need sha256sum

[ "$(uname -s)" = Linux ] || { say "install.sh is for Linux (Windows and macOS: https://maniaclab.app/en/engine/)"; exit 1; }
[ "$(uname -m)" = x86_64 ] || { say "install.sh: Maniac Engine for Linux is for x86-64 PCs"; exit 1; }

feed=$(curl -fsSL "$FEED")
field() {  # field <key> - from the "linux" build of the feed (no JSON tool needed)
  printf '%s' "$feed" | tr -d '\n' | sed -n "s/.*\"linux\"[^}]*\"$1\": *\"\{0,1\}\([^\",}]*\).*/\1/p"
}
url=$(field url); sha=$(field sha256)
version=$(printf '%s' "$feed" | tr -d '\n' | sed -n 's/.*"version": *"\([^"]*\)".*/\1/p')
[ -n "$url" ] && [ -n "$sha" ] || { say "install.sh: no Linux build in $FEED"; exit 1; }

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
say "Maniac Engine $version: downloading $url"
curl -fL --retry 3 --connect-timeout 20 -o "$tmp/engine.tar.gz" "$url"
printf '%s  %s\n' "$sha" "$tmp/engine.tar.gz" | sha256sum -c - >/dev/null || { say "install.sh: the download's SHA-256 is not the one published: not installed"; exit 1; }
mkdir -p "$tmp/unpacked"
tar -xzf "$tmp/engine.tar.gz" -C "$tmp/unpacked"
[ -x "$tmp/unpacked/ManiacEngine/ManiacEngine" ] || { say "install.sh: the archive has no ManiacEngine/ManiacEngine"; exit 1; }

mkdir -p "$(dirname "$DEST")"
if [ -e "$DEST" ]; then
  rm -rf "$DEST.previous"
  mv "$DEST" "$DEST.previous"          # (the one before, kept beside it)
fi
mv "$tmp/unpacked/ManiacEngine" "$DEST"

# OpenGL with no screen: Mesa's EGL (and its drivers, llvmpipe among them)
if ! ldconfig -p 2>/dev/null | grep -q 'libEGL.so.1'; then
  if command -v apt-get >/dev/null 2>&1; then
    SUDO=""; [ "$(id -u)" = 0 ] || { command -v sudo >/dev/null 2>&1 && SUDO="sudo -n"; }
    if [ "$(id -u)" = 0 ] || [ -n "$SUDO" ]; then
      say "installing Mesa's EGL (libegl1 libgl1-mesa-dri) for drawing with no screen"
      $SUDO apt-get install -y -q libegl1 libgl1-mesa-dri >/dev/null 2>&1 || { $SUDO apt-get update -q >/dev/null 2>&1 && $SUDO apt-get install -y -q libegl1 libgl1-mesa-dri >/dev/null 2>&1; } || say "(could not install it: play and screenshots need libegl1 libgl1-mesa-dri)"
    else
      say "(play and screenshots need Mesa's EGL: install libegl1 libgl1-mesa-dri)"
    fi
  else
    say "(play and screenshots need Mesa's EGL - libEGL.so.1 and Mesa's drivers)"
  fi
fi

say "Maniac Engine $version is in $DEST"
say "  $DEST/ManiacEngine --cmd version --json"
say "  $DEST/ManiacEngine --cmd project.create ThirdPerson MyGame --location ~/Games --json"
say "  $DEST/ManiacEngine --mcp ~/Games/MyGame          (the MCP server)"
say "By using Maniac Engine you accept its licence: $DEST/EULA.txt"
