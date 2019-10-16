.PHONY: build
build:
	cd nixbox && make BUILDERS=qemu build-x86_64

import:
	vagrant box add --force nixos ./nixbox/packer_qemu_libvirt.box

up:
	vagrant up --provider=libvirt

down:
	vagrant destroy --force

ssh:
	vagrant ssh

rsync:
	vagrant rsync

test: down build import up

help:
