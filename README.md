# Baseboxes

This repository holds our [packer](https://www.packer.io) definition for various
base boxes to setup our development machines with vagrant. These boxes are pretty
minimalistic, if you are searching for a fullstack web development box take a
look at our [webdev](https://github.com/webhippie/webdev) boxes.

## Building

* You need to export ```PACKER_CACHE_DIR=cache```
* Please execute ```packer build boxes/definition.json```

## Downloads

* Centos
  * 6.5: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)
  * 7.0: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)
* Debian
  * 7.6: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)
* openSUSE
  * 13.1: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)
* Ubuntu
  * 13.10: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)
  * 14.04: [Virtualbox](http://vagrant.webhippie.de/), [VMware](http://vagrant.webhippie.de/), [KVM](http://vagrant.webhippie.de/)

## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
