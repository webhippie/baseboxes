Veewee::Definition.declare({
  :cpu_count => "4",
  :memory_size=> "1024",
  :disk_size => "20480",
  :disk_format => "VMDK",
  :hostiocache => "off",
  :os_type_id => "OpenSUSE",
  :virtualbox => { 
    :vm_options => [
      "hwvirtex" => "off",
      "nestedpaging" => "off",
      "natdnshostresolver1" => "on"
    ]
  },
  :iso_file => "openSUSE-13.1-DVD-i586.iso",
  :iso_src => "http://download.opensuse.org/distribution/13.1/iso/openSUSE-13.1-DVD-i586.iso",
  :iso_md5 => "1bd6223430910f6d5a168d4e19171462",
  :iso_download_timeout => "1000",
  :boot_wait => "10", 
  :boot_cmd_sequence => [
    "<Esc><Enter>",
    "linux ",
    "netdevice=eth0 ",
    "netsetup=dhcp ",
    "instmode=dvd ",
    "textmode=1 ",
    "autoyast=http://%IP%:8888/autoinst.xml ",
    "<Enter>"
  ],
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7227",
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
  :postinstall_timeout => "10000",
  :hooks => {
    # Before starting the build we spawn a webrick webserver which serves the
    # autoyast profile to the installer. veewee's built in webserver solution
    # doesn't work reliably with autoyast due to some timing issues.
    :before_create => Proc.new do
      Thread.new { 
        WEBrick::HTTPServer.new(
          :Port => 8888, 
          :DocumentRoot => "#{Dir.pwd}/definitions/#{definition.box.name}"
        ).start
      }
    end
  }
})
