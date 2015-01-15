# Webdev vagrant boxes

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
webdev <rails|symfony|typo3|wordpress> [memcached] [redis] [elasticsearch] [mysql] [pgsql] [mongodb]
```

You always need one of the types of applications. All other services are
optional and will be enabled or disabled on booting the virtual machine. To
get this set while booting the vagrant box you need to define a bash
provisioner in this way:

```ruby
Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "webdev rails mysql"
end
```


## Supported

* [Ruby on Rails](http://rubyonrails.org/)
* [Typo3](http://typo3.org/)
* [Symfony2](http://symfony.com/)
* [Wordpress](http://wordpress.org/)


## Included

* Nginx
* PHP
* Ruby
* MySQL
* Memcached
* Elasticsearch
* Redis


## Planned

* PostgreSQL
* Mongodb


## Cookbooks

* [apt](https://github.com/chefhippie/apt)
* [build](https://github.com/chefhippie/build)
* [cronlist](https://github.com/chefhippie/cronlist)
* [database](https://github.com/chefhippie/database)
* [elasticsearch](https://github.com/chefhippie/elasticsearch)
* [git](https://github.com/chefhippie/git)
* [homeshick](https://github.com/chefhippie/homeshick)
* [hosts](https://github.com/chefhippie/hosts)
* [htop](https://github.com/chefhippie/htop)
* [imagemagick](https://github.com/chefhippie/imagemagick)
* [java](https://github.com/chefhippie/java)
* [locales](https://github.com/chefhippie/locales)
* [locate](https://github.com/chefhippie/locate)
* [memcached](https://github.com/chefhippie/memcached)
* [mongodb](https://github.com/chefhippie/mongodb)
* [motd](https://github.com/chefhippie/motd)
* [mysql](https://github.com/chefhippie/mysql)
* [nano](https://github.com/chefhippie/nano)
* [network](https://github.com/chefhippie/network)
* [nginx](https://github.com/chefhippie/nginx)
* [ntp](https://github.com/chefhippie/ntp)
* [openssh](https://github.com/chefhippie/openssh)
* [php](https://github.com/chefhippie/php)
* [postgresql](https://github.com/chefhippie/postgresql)
* [readline](https://github.com/chefhippie/readline)
* [redis](https://github.com/chefhippie/redis)
* [ruby](https://github.com/chefhippie/ruby)
* [screen](https://github.com/chefhippie/screen)
* [sqlite](https://github.com/chefhippie/sqlite)
* [sshkey](https://github.com/chefhippie/sshkey)
* [subversion](https://github.com/chefhippie/subversion)
* [sudo](https://github.com/chefhippie/sudo)
* [timezone](https://github.com/chefhippie/timezone)
* [vim](https://github.com/chefhippie/vim)
* [webdev](https://github.com/chefhippie/webdev)
* [zypper](https://github.com/chefhippie/zypper)


## Downloads

* Centos 6.5
  * [Virtualbox](http://vagrant.webhippie.de/webdev/centos-6.5-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/centos-6.5-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/centos-6.5-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-centos-6.5)

* Centos 7.0
  * [Virtualbox](http://vagrant.webhippie.de/webdev/centos-7.0-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/centos-7.0-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/centos-7.0-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-centos-7.0)

* Debian 7.6
  * [Virtualbox](http://vagrant.webhippie.de/webdev/debian-7.6-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/debian-7.6-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/debian-7.6-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-debian-7.6)

* openSUSE 13.1
  * [Virtualbox](http://vagrant.webhippie.de/webdev/opensuse-13.1-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/opensuse-13.1-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/opensuse-13.1-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-opensuse-13.1)

* openSUSE 13.2
  * [Virtualbox](http://vagrant.webhippie.de/webdev/opensuse-13.2-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/opensuse-13.2-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/opensuse-13.2-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-opensuse-13.2)

* Ubuntu 13.10
  * [Virtualbox](http://vagrant.webhippie.de/webdev/ubuntu-13.10-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/ubuntu-13.10-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/ubuntu-13.10-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-ubuntu-13.10)

* Ubuntu 14.04
  * [Virtualbox](http://vagrant.webhippie.de/webdev/ubuntu-14.04-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev/ubuntu-14.04-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev/ubuntu-14.04-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-ubuntu-14.04)


## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
