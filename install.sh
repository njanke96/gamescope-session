#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

script_dir="$(cd "$(dirname "$0")" && pwd)"

session_dest="/etc/ly/custom-sessions"

if [ ! -d "$session_dest" ]; then
    # /usr/local/share/wayland-sessions is usually ignored by display managers
    session_dest="/usr/share/wayland-sessions"
fi

# wayland sessions
for desktop_file in "${script_dir}"/wayland-sessions/*.desktop; do
    [ -e "$desktop_file" ] || continue
    echo "Installing $session_dest/$(basename "$desktop_file")"
    install -m 0644 "$desktop_file" "$session_dest/"
done

# misc applications
for desktop_file in "${script_dir}"/misc/*.desktop; do
    [ -e "$desktop_file" ] || continue
    echo "Installing /usr/local/share/applications/$(basename "$desktop_file")"
    install -m 0644 "$desktop_file" /usr/local/share/applications/
done

# start scripts
echo "Installing /usr/local/bin/gamescope-session"
install -m 0755 "${script_dir}/gamescope-session" /usr/local/bin/

echo "Installing /usr/local/bin/gamescope-bigpicture"
install -m 0755 "${script_dir}/gamescope-bigpicture" /usr/local/bin/
