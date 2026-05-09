#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

script_dir="$(cd "$(dirname "$0")" && pwd)"

# wayland sessions
for desktop_file in "${script_dir}"/wayland-sessions/*.desktop; do
    [ -e "$desktop_file" ] || continue
    cp -f "$desktop_file" /usr/share/wayland-sessions/
    echo "Installed $(basename "$desktop_file")"
done

# start scripts
cp -f "${script_dir}/gamescope-session" /usr/bin/
echo "Installed gamescope-session"

cp -f "${script_dir}/gamescope-bigpicture" /usr/bin/
echo "Installed gamescope-bigpicture"
