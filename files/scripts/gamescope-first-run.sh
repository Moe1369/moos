#!/usr/bin/env bash
set -euo pipefail
wget https://large-package-sources.nobaraproject.org/bootstrap_steam.tar.gz -O %{buildroot}%{_datadir}/gamescope-session-plus/bootstraplinux_ubuntu12_32.tar.xz
mkdir -p %{_sysconfdir}/skel/.local/share/Steam
tar -xf %{_datadir}/gamescope-session-plus/bootstraplinux_ubuntu12_32.tar.xz -C %{_sysconfdir}/skel/.local/share/

