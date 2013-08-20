Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "Ubuntu",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "hwvirtexexcl" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "ubuntu-12.04.2-server-i386-netboot.iso",
  :iso_src => "http://archive.ubuntu.com/ubuntu/dists/precise/main/installer-i386/current/images/netboot/mini.iso",
  :iso_md5 => "40b06c42a98e40ff9fe23af9b976e1f3",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Esc>",
    "linux ",
    "noapic ",
    "preseed/url=http://%IP%:%PORT%/preseed.cfg ",
    "debian-installer=en_US ",
    "auto ",
    "locale=en_US ",
    "kbd-chooser/method=us ",
    "hostname=%NAME% ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "keyboard-configuration/layout=Germany ",
    "keyboard-configuration/variant=Germany ",
    "console-setup/ask_detect=false ",
    "console-setup/modelcode=pc105 ",
    "console-setup/layoutcode=de ",
    "initrd=initrd.gz -- <Enter>"
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
  :sudo_cmd => "echo '%p' | sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "ruby.sh",
    "chef.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
