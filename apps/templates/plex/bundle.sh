#!/bin/bash
mkdir -p /tmp/clone

git clone --no-checkout https://github.com/piplongrun/Radarr.bundle.git /tmp/clone/Radarr.bundle
git clone --no-checkout https://github.com/piplongrun/Sonarr.bundle.git /tmp/clone/Sonarr.bundle
git clone --no-checkout https://github.com/ZeroQI/Hama.bundle.git /tmp/clone/Hama.bundle

rsync -a -v /tmp/clone/ /opt/appdata/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/
rm -rf /opt/appdata/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/.git
chown -cR 1000:1000 /opt/appdata/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/
chmod -R 775 /opt/appdata/plex/database/Library/Application\ Support/Plex\ Media\ Server/Plug-ins/

rm -rf /tmp/clone

exit 0

