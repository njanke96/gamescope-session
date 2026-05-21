# gamescope-session
My gamescope session scripts and desktop files (used in Void Linux)

## Install

- Run `install.sh`

## What's inside

### gamescope-bigpicture

Script to launch Steam Big Picture nested in gamescope within an X11/Wayland session. Best for when running other applications like Discord or when alt-tabbing to a Desktop is needed. Launches [steam-controller-dsu](https://github.com/njanke96/steam-controller-dsu) with defaults if it is installed.

### gamesope-session

Gamescope session launch. I don't have user services so it manually starts pipewire and a dbus session. Also launches [steam-controller-dsu](https://github.com/njanke96/steam-controller-dsu) with defaults if it is installed.

### wayland-sessions

The .desktop files for Wayland sessions I use with `gamescope-session`. They are rather specific to my output connectors and devices. Anyone who comes across
this and wants to use them should adapt these to their own needs.

### kill-steam.desktop

This is a workaround for "Return to Desktop" in steam bigpicture causes the process to hang when steam was started with `-gamepadui`.
Add "Kill Steam" as a non-steam game to properly exit steam from the `gamescope-session` or `gamescope-bigpicture`.
