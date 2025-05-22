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

### Homeassistant
1. To use /dev/ttyUSB0 join user to dialout group
2. sudo setsebool container_use_devices=true
3.
