Vagrant.configure("2") do |config|

  config.vm.define :nixos do |nixos|
    nixos.vm.box = "nixos"
    nixos.vm.provider :libvirt do |domain|
      domain.cpus = 3
      domain.cputopology :sockets => '1', :cores => '3', :threads => '1'
      domain.memory = 4096
      domain.graphics_type = 'vnc'
    end
  end

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '/home/kondy/src/dotfile-nix',
    '/nix-config', enabled: 'true', type: 'rsync'

end
