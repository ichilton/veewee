Veewee::Session.declare({
  :cpu_count => '1', :memory_size=> '512',
  :disk_size => '10140', :disk_format => 'VDI', :hostiocache => 'off', :ioapic => 'on', :pae => 'on',
  :os_type_id => 'RedHat_64',
  :iso_file => "SL-61-i386-2011-07-27-boot.iso",
  :iso_src => "http://mirrors.200p-sf.sonic.net/scientific/6.1/i386/iso/SL-61-i386-2011-07-27-boot.iso",
  :iso_md5 => "d3cd58e67052331c9c3648e3ecd00b13",
  :iso_download_timeout => 1000,
  :boot_wait => "15", :boot_cmd_sequence => [ '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
  :kickstart_port => "7122", :kickstart_timeout => 10000, :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "100", :ssh_user => "vagrant", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [ "postinstall.sh"], :postinstall_timeout => 10000
})