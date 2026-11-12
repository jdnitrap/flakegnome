# flakegnome

NixOS GNOME configuration for this machine, as a flake. The modules are the live configuration from `/etc/nixos`.

`hardware-configuration.nix` is included, so the disk ids belong to this computer. The Nixpkgs pin is `ac588ef1c914`, the same revision this machine is running.

```bash
sudo nixos-rebuild switch --flake .#hostname
```

The host name inside the configuration is `hostname`.
