#!/usr/bin/env bash
#client configuration file with  Puppet

$ssh_config_file = '/etc/ssh/ssh_config'

file_line { 'Declare identity file':
  path    => $ssh_config_file,
  line    => '    IdentityFile ~/.ssh/school',
  ensure  => present,
}

#refuse to authenticate using a password
file_line { 'Turn off passwd auth':
  path    => $ssh_config_file,
  line    => '    PasswordAuthentication no',
  ensure  => present,
}
