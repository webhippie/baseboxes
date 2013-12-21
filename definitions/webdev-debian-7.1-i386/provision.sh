cat > /tmp/solo.json <<EOF
{
  "run_list": [



    "recipe[locales]",
    "recipe[timezone]",
    "recipe[htop]",
    "recipe[screen]",
    "recipe[vim]",
    "recipe[nano]",
    "recipe[locate]",
    "recipe[cronlist]",
    "recipe[sqlite]",
    "recipe[ntp]",
    "recipe[openssh]",
    "recipe[readline]",



    "recipe[ruby]",
    "recipe[php]",
    "recipe[mysql]",
    "recipe[nginx]"



  ],
  "foo": "bar"
}
EOF

cat > /tmp/solo.rb <<EOF
root_path = File.expand_path(
  '../..',
  __FILE__
)

cookbook_path [
  File.join(root_path, 'cookbooks')
]

checksum_path File.join('/tmp', 'chef', 'checksum')
file_cache_path File.join('/tmp', 'chef', 'cache')
file_backup_path File.join('/tmp', 'chef', 'backup')

cache_options({
  path: File.join('/tmp', 'chef', 'cache', 'checksums'), 
  skip_expires: true
})

log_level :info
EOF
