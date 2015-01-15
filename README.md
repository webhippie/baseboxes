# Baseboxes

This repository holds our [packer](https://www.packer.io) definition for various
base boxes to setup our development machines with vagrant.


## Building

* Install packer from the [website](http://www.packer.io)
* ```export PACKER_CACHE_DIR=cache```
* ```packer build -parallel=true boxes/base/definition.json```


## Downloads

The boxes are seperated into 3 groups, you can choose the one that matches best
for you:

* [Base](BASE.md): Simple vagrant base images which are pretty minimalistic, as
  you can see on the definitions we have already preinstalled the vmtools and
  chef 11.

* [Webdev](WEBDEV.md): Extended vagrant images where we have already preinstalled
  a fullstack development environment for web applications.

* [Server](SERVER.md): Not really vagrant images but definitions for generating
  qcow2 images which are getting used on our servers. These images can easily
  get imported through libvirt into KVM or Xen.


## Credits

Copyright (c) 2014 Thomas Boerger <http://www.webhippie.de>
