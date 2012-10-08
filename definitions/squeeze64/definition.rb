Veewee::Session.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20000",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "Debian_64",
  :iso_file => "debian-6.0.5-amd64-netinst.iso",
  :iso_src => "http://cdimage.debian.org/debian-cd/6.0.5/amd64/iso-cd/debian-6.0.5-amd64-netinst.iso",
  :iso_md5 => "a213b1d6da1996c677706d843b6ee0f2",
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
    "netcfg/get_domain=vagrantup.com ",
    "fb=false ",
    "debconf/frontend=noninteractive ",
    "console-setup/ask_detect=false ",
    "console-keymaps-at/keymap=de ",
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
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "halt -p",
  :postinstall_files => [
    "postinstall.sh"
  ],
  :postinstall_timeout => "10000"
})
