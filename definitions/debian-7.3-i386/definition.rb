Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "Debian",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "debian-7.3.0-i386-netinst.iso",
  :iso_src => "http://cdimage.debian.org/cdimage/release/7.3.0/i386/iso-cd/debian-7.3.0-i386-netinst.iso",
  :iso_md5 => "04c58f30744e64a0459caf7d7cace479",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
     "<Esc>",
     "install ",
     "preseed/url=http://%IP%:%PORT%/preseed.cfg ",
     "debian-installer=en_US ",
     "auto ",
     "locale=en_US ",
     "kbd-chooser/method=us ",
     "netcfg/get_hostname=%NAME% ",
     "netcfg/get_domain=webhippie.de ",
     "fb=false ",
     "debconf/frontend=noninteractive ",
     "console-setup/ask_detect=false ",
     "console-keymaps-at/keymap=de ",
     "keyboard-configuration/xkb-keymap=de ",
     "<Enter>"
  ],
  :kickstart_port => "7127",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7227",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "halt -p",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "chef.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
