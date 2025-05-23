# MoeOS OCI Images

## MoeOS Server Postsetup
1. Create ZFS root dataset in ~/.local/share/containers
2. Create datasets for ~/.local/share/containers/{cache,storage,podman}
3. Change owner chown -R administrator:administrator ~/.local/share/containers
4. sudo semanage fcontext -a -t data_home_t "~/.local/share/containers(/.*)?"
5. sudo restorecon -Rv ~/.local/share/containers
6. Clone Quadlets Repo in ~/.config/containers/systemd (create folder before)
7. systemctl --user daemon-reload
8. Add podman auto-update
9. rpm-ostree auto update (change /etc/rpm-ostreed.conf to "stage")
10. ZSH settings for user and root
11. sudo timedatectl set-timezone Europe/Berlin
12. create weekly scrub timer for both zfs pools
13. Podman auto updates mit: systemctl --user enable podman-auto-update.{service,timer}

### Homeassistant
1. To use /dev/ttyUSB0 join user to dialout group
2. sudo setsebool container_use_devices=true
3. Custom SELinux policy for USB:
4. Run HA with USB attached
5. Policy will be violated -> log it and create new policy
6. sudo ausearch -m avc -ts recent | sudo audit2allow -M homeassistant-usb
7. apply new policy: sudo semodule -i homeassistant-usb.pp
