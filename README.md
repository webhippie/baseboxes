# Vagrant

This repository holds our [packer](https://www.packer.io) definition for various
base boxes to setup our development machines with vagrant.


## openSUSE

```bash
packer build -parallel=false definitions/base/opensuse-tumbleweed.json
packer build -parallel=false definitions/server/opensuse-tumbleweed.json

packer build -parallel=false definitions/base/opensuse-42.1.json
packer build -parallel=false definitions/server/opensuse-42.1.json

packer build -parallel=false definitions/base/opensuse-13.2.json
packer build -parallel=false definitions/server/opensuse-13.2.json

packer build -parallel=false definitions/base/opensuse-13.1.json
packer build -parallel=false definitions/server/opensuse-13.1.json
```

### Tumbleweed

* [QCOW2](http://vagrant.webhippie.de/opensuse-tumbleweed-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/opensuse-tumbleweed-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/opensuse-tumbleweed-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/opensuse-tumbleweed-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/opensuse-tumbleweed)

### 42.1

* [QCOW2](http://vagrant.webhippie.de/opensuse-42.1-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/opensuse-42.1-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/opensuse-42.1-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/opensuse-42.1-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/opensuse-42.1)

### 13.2

* [QCOW2](http://vagrant.webhippie.de/opensuse-13.2-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/opensuse-13.2-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/opensuse-13.2-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/opensuse-13.2-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/opensuse-13.2)

### 13.1

* [QCOW2](http://vagrant.webhippie.de/opensuse-13.1-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/opensuse-13.1-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/opensuse-13.1-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/opensuse-13.1-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/opensuse-13.1)


## Centos

```bash
packer build -parallel=false definitions/base/centos-7.json
packer build -parallel=false definitions/server/centos-7.json

packer build -parallel=false definitions/base/centos-6.json
packer build -parallel=false definitions/server/centos-6.json
```

### 7

* [QCOW2](http://vagrant.webhippie.de/centos-7-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/centos-7-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/centos-7-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/centos-7-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/centos-7)

### 6

* [QCOW2](http://vagrant.webhippie.de/centos-6-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/centos-6-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/centos-6-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/centos-6-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/centos-6)


## Debian

```bash
packer build -parallel=false definitions/base/debian-8.json
packer build -parallel=false definitions/server/debian-8.json

packer build -parallel=false definitions/base/debian-7.json
packer build -parallel=false definitions/server/debian-7.json
```

### 8

* [QCOW2](http://vagrant.webhippie.de/debian-8-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/debian-8-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/debian-8-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/debian-8-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/debian-8)

### 7

* [QCOW2](http://vagrant.webhippie.de/debian-7-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/debian-7-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/debian-7-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/debian-7-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/debian-7)


## Ubuntu

```bash
packer build -parallel=false definitions/base/ubuntu-16.04.json
packer build -parallel=false definitions/server/ubuntu-16.04.json

packer build -parallel=false definitions/base/ubuntu-14.04.json
packer build -parallel=false definitions/server/ubuntu-14.04.json

packer build -parallel=false definitions/base/ubuntu-13.10.json
packer build -parallel=false definitions/server/ubuntu-13.10.json
```

### 16.04

* [QCOW2](http://vagrant.webhippie.de/ubuntu-16.04-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/ubuntu-16.04-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/ubuntu-16.04-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/ubuntu-16.04-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/ubuntu-16.04)

### 14.04

* [QCOW2](http://vagrant.webhippie.de/ubuntu-14.04-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/ubuntu-14.04-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/ubuntu-14.04-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/ubuntu-14.04-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/ubuntu-14.04)

### 13.10

* [QCOW2](http://vagrant.webhippie.de/ubuntu-13.10-0.0.1.qcow2)
* [Virtualbox](http://vagrant.webhippie.de/ubuntu-13.10-virtualbox-1.0.0.box)
* [VMware](http://vagrant.webhippie.de/ubuntu-13.10-vmware-1.0.0.box)
* [Libvirt/KVM](http://vagrant.webhippie.de/ubuntu-13.10-libvirt-1.0.0.box)
* Also available at [Atlas](https://atlas.hashicorp.com/webhippie/boxes/ubuntu-13.10)


## License

MIT


## Copyright

```
Copyright (c) 2014-2016 Thomas Boerger <http://www.webhippie.de>
```
