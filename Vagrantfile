Vagrant.configure("2") do |config|
  config.vm.box = "nixos"

  config.ssh.username = 'root'
  config.ssh.private_key_path = './keys/insecure-local'

  config.vm.provider "vmware_desktop" do |v|
    v.gui = true
    v.ssh_info_public = true
  end

  # disable default folder?
  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.vm.synced_folder "C:/blackstone/src/nix-config", "/root/src/nix-config",
    create: true,
    disabled: false,
    type: 'rsync',
    # need to sync the .git for makefile to work
    rsync__exclude: [".vagrant/"]


    config.vm.provision "shell", path: "provision.sh"
end