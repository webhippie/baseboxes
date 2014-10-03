# Baseboxes

This repository holds our [packer](https://www.packer.io) definition for various
base boxes to setup our development machines with vagrant. These boxes are pretty
minimalistic, if you are searching for a fullstack web development box take a
look at our [webdev](https://github.com/webhippie/webdev) boxes.

## Building

* Install packer from the [website](http://www.packer.io)
* ```export PACKER_CACHE_DIR=cache```
* ```packer build -parallel=true boxes/definition.json```

## Downloads

* Centos 6.5
  * [Virtualbox](http://vagrant.webhippie.de/centos-6.5-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/centos-6.5-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/centos-6.5-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/centos-6.5)

* Centos 7.0
  * [Virtualbox](http://vagrant.webhippie.de/centos-7.0-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/centos-7.0-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/centos-7.0-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/centos-7.0)

* Debian 7.6
  * [Virtualbox](http://vagrant.webhippie.de/debian-7.6-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/debian-7.6-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/debian-7.6-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/debian-7.6)

* openSUSE 13.1
  * [Virtualbox](http://vagrant.webhippie.de/opensuse-13.1-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/opensuse-13.1-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/opensuse-13.1-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/opensuse-13.1)

* Ubuntu 13.10
  * [Virtualbox](http://vagrant.webhippie.de/ubuntu-13.10-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/ubuntu-13.10-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/ubuntu-13.10-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/ubuntu-13.10)

* Ubuntu 14.04
  * [Virtualbox](http://vagrant.webhippie.de/ubuntu-14.04-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/ubuntu-14.04-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/ubuntu-14.04-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/ubuntu-14.04)

## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
