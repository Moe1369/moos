# Enable Proton Stuff only on gnome. Leave as default for console setup
if [[ "$DESKTOP_SESSION" == "gnome*" ]]; then
  export PROTON_FSR4_UPGRADE=1
  export PROTON_ENABLE_HDR=1
  export PROTON_ENABLE_WAYLAND=1
fi
