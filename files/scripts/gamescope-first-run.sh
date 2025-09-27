#!/usr/bin/env bash
set -euo pipefail
mkdir -p /usr/share/gamescope-session-plus/
curl --retry 3 -Lo /usr/share/gamescope-session-plus/bootstrap_steam.tar.gz https://large-package-sources.nobaraproject.org/bootstrap_steam.tar.gz
