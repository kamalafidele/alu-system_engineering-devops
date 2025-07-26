# Puppet manifest to configure SSH client configuration
# This manifest sets up SSH to use private key and refuse password authentication

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^[#]*\s*PasswordAuthentication',
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^[#]*\s*IdentityFile ~/.ssh/school',
}
