Vagrant.configure("2") do |config|

  config.vm.define :nixos do |nixos|
    nixos.vm.box = "nixos"
    nixos.vm.provider :libvirt do |domain|
      domain.cpus = 2
      domain.cputopology :sockets => '1', :cores => '2', :threads => '1'
      domain.memory = 2048
      domain.graphics_type = 'vnc'
    end
  end

  config.vm.synced_folder '.', '/vagrant', enabled: 'false'
  config.vm.synced_folder '/home/kondy/src/dotfile-nix',
    '/home/vagrant/nix-config', enabled: 'true', type: 'rsync'

end
