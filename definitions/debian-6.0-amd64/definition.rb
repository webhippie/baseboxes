Veewee::Session.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "Debian_64",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "hwvirtexexcl" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "debian-6.0.7-amd64-netinst.iso",
  :iso_src => "http://cdimage.debian.org/cdimage/archive/6.0.7/amd64/iso-cd/debian-6.0.7-amd64-netinst.iso",
  :iso_md5 => "cc509122349a27bf1958e1ea0ce4065d",
  :iso_download_timeout => "1000",
  :boot_wait => "10",
  :boot_cmd_sequence => [
    "<Esc>",
    "install ",
    "preseed/url=http://%IP%:%PORT%/preseed.cfg ",
    "debian-installer=en_US ",
    "auto ",
    "locale=en_US ",
    "kbd-chooser/method=de ",
    "netcfg/get_hostname=%NAME% ",
    "netcfg/get_domain=tbpro.org ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "console-setup/ask_detect=false ",
    "console-keymaps-at/keymap=de ",
    "<Enter>"
  ],
  :kickstart_port => "7124",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7224",
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
