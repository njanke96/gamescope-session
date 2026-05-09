# gamescope-session
My gamescope session scripts and desktop files (used in Void Linux)

## Install

- Run `install.sh`

## What's inside

### gamescope-bigpicture

Script to launch bigpicture nested in gamescope within an x11/wayland session. Best for when running other applications like Discord or when alt-tabbing to a Desktop is needed.

### gamesope-session

Gamescope session launch. I don't have user services so it manually starts pipewire and a dbus session.

### wayland-sessions

The .desktop files for Wayland sessions I use with `gamescope-session`

### kill-steam.desktop

This is a workaround for "Return to Desktop" in steam bigpicture causes the process to hang when steam was started with `-gamepadui`.
Add "Kill Steam" as a non-steam game to properly exit steam from the `gamescope-session` or `gamescope-bigpicture`.
