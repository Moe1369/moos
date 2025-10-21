#!/bin/bash
if [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [[ "$XDG_CURRENT_DESKTOP" == *"Plasma"* ]]; then
    export PROTON_FSR4_UPGRADE=1
    export PROTON_ENABLE_HDR=1
    export PROTON_ENABLE_WAYLAND=1
fi
