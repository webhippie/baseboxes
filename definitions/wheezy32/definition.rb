Veewee::Session.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20000",
  :disk_format => "VMDK",
  :hostiocache => "on",
  :os_type_id => "Debian",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "hwvirtexexcl" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "debian-7.0.0-i386-netinst.iso",
  :iso_src => "http://cdimage.debian.org/cdimage/release/7.0.0/i386/iso-cd/debian-7.0.0-i386-netinst.iso",
  :iso_md5 => "a6b93666a5393334accb7ac4ee28d949",
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
    "netcfg/get_domain=tbpro.de ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "console-setup/ask_detect=false ",
    "console-keymaps-at/keymap=de ",
    "keyboard-configuration/xkb-keymap=de ",
    "<Enter>"
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => "10000",
  :kickstart_file => "preseed.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "deploy",
  :ssh_password => "deploy",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S bash '%f'",
  :shutdown_cmd => "halt -p",
  :postinstall_files => [
    "postinstall.sh"
  ],
  :postinstall_timeout => "10000"
})
