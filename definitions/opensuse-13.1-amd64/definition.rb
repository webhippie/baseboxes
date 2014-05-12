Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "OpenSUSE_64",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "openSUSE-13.1-DVD-x86_64.iso",
  :iso_src => "http://download.opensuse.org/distribution/13.1/iso/openSUSE-13.1-DVD-x86_64.iso",
  :iso_md5 => "1096c9c67fc8a67a94a32d04a15e909d",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Esc><Enter>",
    "linux ",
    "netdevice=eth0 ",
    "netsetup=dhcp ",
    "instmode=dvd ",
    "textmode=1 ",
    "autoyast=http://%IP%:%PORT%/autoinst.xml ",
    "<Enter>"
  ],
  :kickstart_port => "7126",
  :kickstart_timeout => "10000",
  :kickstart_file => ["autoinst.xml", "autoinst.xml"],
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7226",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p' | sudo -S bash '%f'",
  :shutdown_cmd => "shutdown -P now",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "chef.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => "10000"
})
