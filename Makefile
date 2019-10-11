.PHONY: build
build:
	cd nixbox && make BUILDERS=qemu build-x86_64
