{ config, pkgs, ... }:

#
# This file contains configuration specific to running OS as a virtualbox guest.
#

{
  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh.permitRootLogin = "yes";
  users.extraUsers.root.openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5GZTNqYZx5n4ba8ZVNCLiaOkjbwZubmtdR7OOvLAf4dhjcB4M6ESJSy3jeC90ufBOD+cV7PCRxi7zHbd5i6anFFkKr7R8axlXad7A5x0mNGJb1rO7Ap6c72vJZxiHIMEneYz57onlbL09LbMuTt+E2vCLGnC2gF+CAbafVB6g+beq7HlJd13WZnwVSmiS+kILKrEH2G3cHPHD6RZqBYc1yKiT6aG1A3LrC6XG/6E+R/XcH1dFf+Fhc5Nm1EBCc3KNWHkPzVXh5/x7eQ0ycrADO8LuXRTOBpBZpA5bT1S5jvFNLQVnmlPshd/F3YuIH60re4kubCbdx8ANQthG6bzj insecure" ];

  virtualisation.vmware.guest.enable = true;
}