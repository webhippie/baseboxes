# Baseboxes

This repository holds our [packer](https://www.packer.io) definition for various
base boxes to setup our development machines with vagrant. These boxes are pretty
minimalistic, if you are searching for a fullstack web development box take a
look at our [webdev](#webdev) boxes.

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

## Webdev

The webdev boxes define a full stack development environment for web development
based on the below listed technologies.

Developing on PHP works out of the box. Simply start a virtual machine
with the provided basebox, forward any port to port 80 on the virtual machine
and you can start to developing. 

For Ruby development it's currently a little bit more complicated. You need
to start the virtual machine and bundle your required gems and start a rack
server like webrick on port 3000 on the virtual machine. Afterwards you've
got to forward any host port to port 80 on the virtual machine and you can
start.

To start the various services we provide a command line script that gets
executed with the vagrant shell provisioner. You can see a sample below this
note.

```bash
TBD
```

### Supported

* [Ruby on Rails](http://rubyonrails.org/)
* [Typo3](http://typo3.org/)
* [Symfony2](http://symfony.com/)
* [Wordpress](http://wordpress.org/)

### Included

* Nginx
* PHP
* Ruby
* MySQL
* Memcached
* Elasticsearch
* Redis

### Planned

* PostgreSQL
* Mongodb

### Cookbooks

* [database](https://github.com/tboerger/chef-database)
* [sshkey](https://github.com/tboerger/chef-sshkey)
* [apt](https://github.com/tboerger/chef-apt)
* [zypper](https://github.com/tboerger/chef-zypper)
* [sudo](https://github.com/tboerger/chef-sudo)
* [locales](https://github.com/tboerger/chef-locales)
* [timezone](https://github.com/tboerger/chef-timezone)
* [hosts](https://github.com/tboerger/chef-hosts)
* [motd](https://github.com/tboerger/chef-motd)
* [build](https://github.com/tboerger/chef-build)
* [network](https://github.com/tboerger/chef-network)
* [readline](https://github.com/tboerger/chef-readline)
* [git](https://github.com/tboerger/chef-git)
* [subversion](https://github.com/tboerger/chef-subversion)
* [cronlist](https://github.com/tboerger/chef-cronlist)
* [homeshick](https://github.com/tboerger/chef-homeshick)
* [htop](https://github.com/tboerger/chef-htop)
* [imagemagick](https://github.com/tboerger/chef-imagemagick)
* [java](https://github.com/tboerger/chef-java)
* [locate](https://github.com/tboerger/chef-locate)
* [screen](https://github.com/tboerger/chef-screen)
* [nano](https://github.com/tboerger/chef-nano)
* [vim](https://github.com/tboerger/chef-vim)
* [sqlite](https://github.com/tboerger/chef-sqlite)
* [php](https://github.com/tboerger/chef-php)
* [ruby](https://github.com/tboerger/chef-ruby)
* [ntp](https://github.com/tboerger/chef-ntp)
* [openssh](https://github.com/tboerger/chef-openssh)
* [elasticsearch](https://github.com/tboerger/chef-elasticsearch)
* [memcached](https://github.com/tboerger/chef-memcached)
* [redis](https://github.com/tboerger/chef-redis)
* [mysql](https://github.com/tboerger/chef-mysql)
* [nginx](https://github.com/tboerger/chef-nginx)
* [mongodb](https://github.com/tboerger/chef-mongodb)
* [postgresql](https://github.com/tboerger/chef-postgresql)
* [webdev](https://github.com/tboerger/chef-webdev)

### Downloads

* Debian 7.6
  * [Virtualbox](http://vagrant.webhippie.de/webdev-debian-7.6-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev-debian-7.6-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev-debian-7.6-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-debian-7.6)

## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
