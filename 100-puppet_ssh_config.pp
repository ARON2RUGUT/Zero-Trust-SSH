
# This manifest ensures that SSH uses the school key
# and disables password authentication.

file { '/home/aron-rugut/.ssh':
  ensure => directory,
  owner  => 'aron-rugut',
  group  => 'aron-rugut',
  mode   => '0700',
}

file { '/home/aron-rugut/.ssh/config':
  ensure  => file,
  owner   => 'aron-rugut',
  group   => 'aron-rugut',
  mode    => '0600',
  content => "Host school\n  HostName 144.217.6.26\n  User kiplangatk\n  IdentityFile /home/aron-rugut/.ssh/school\n  PasswordAuthentication no\n",
}

