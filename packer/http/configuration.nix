{ config, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix 
    ./guest.nix
    #./users.nix
  ];

  # we always want git and vim
  environment.systemPackages = with pkgs; [ 
    git     # keep track of things
    neovim  # for editing
    rsync   # for syncing files
  ];


}