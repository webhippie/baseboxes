# Webdev

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

## Building

* Install packer from the [website](http://www.packer.io)
* ```export PACKER_CACHE_DIR=cache```
* ```packer build -parallel=true boxes/definition.json```

## Downloads

* Debian 7.6
  * [Virtualbox](http://vagrant.webhippie.de/webdev-debian-7.6-virtualbox-0.0.1.box)
  * [VMware](http://vagrant.webhippie.de/webdev-debian-7.6-vmware-0.0.1.box)
  * [Libvirt/KVM](http://vagrant.webhippie.de/webdev-debian-7.6-libvirt-0.0.1.box)
  * Also available at [Vagrant Cloud](https://vagrantcloud.com/webhippie/boxes/webdev-debian-7.6)

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

* [apt](https://github.com/tboerger/chef-apt)
* [build](https://github.com/tboerger/chef-build)
* [cronlist](https://github.com/tboerger/chef-cronlist)
* [database](https://github.com/tboerger/chef-database)
* [elasticsearch](https://github.com/tboerger/chef-elasticsearch)
* [git](https://github.com/tboerger/chef-git)
* [homeshick](https://github.com/tboerger/chef-homeshick)
* [hosts](https://github.com/tboerger/chef-hosts)
* [htop](https://github.com/tboerger/chef-htop)
* [imagemagick](https://github.com/tboerger/chef-imagemagick)
* [java](https://github.com/tboerger/chef-java)
* [locales](https://github.com/tboerger/chef-locales)
* [locate](https://github.com/tboerger/chef-locate)
* [memcached](https://github.com/tboerger/chef-memcached)
* [mongodb](https://github.com/tboerger/chef-mongodb)
* [motd](https://github.com/tboerger/chef-motd)
* [mysql](https://github.com/tboerger/chef-mysql)
* [nano](https://github.com/tboerger/chef-nano)
* [network](https://github.com/tboerger/chef-network)
* [nginx](https://github.com/tboerger/chef-nginx)
* [ntp](https://github.com/tboerger/chef-ntp)
* [openssh](https://github.com/tboerger/chef-openssh)
* [php](https://github.com/tboerger/chef-php)
* [postgresql](https://github.com/tboerger/chef-postgresql)
* [readline](https://github.com/tboerger/chef-readline)
* [redis](https://github.com/tboerger/chef-redis)
* [ruby](https://github.com/tboerger/chef-ruby)
* [screen](https://github.com/tboerger/chef-screen)
* [sqlite](https://github.com/tboerger/chef-sqlite)
* [sshkey](https://github.com/tboerger/chef-sshkey)
* [subversion](https://github.com/tboerger/chef-subversion)
* [sudo](https://github.com/tboerger/chef-sudo)
* [timezone](https://github.com/tboerger/chef-timezone)
* [vim](https://github.com/tboerger/chef-vim)
* [webdev](https://github.com/tboerger/chef-webdev)
* [zypper](https://github.com/tboerger/chef-zypper)

## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
