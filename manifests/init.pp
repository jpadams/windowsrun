class windowsrun {

  if $::kernel == 'Linux' {

    file { '/opt/puppet/libexec/mcollective/mcollective/agent/windowsrun.ddl':
      ensure => file,
      owner  => root,
      group  => root,
      mode   => 0644,
      source => 'puppet:///modules/windowsrun/windowsrun.ddl',
      notify => Service['pe-mcollective'],
    }

    file { '/opt/puppet/libexec/mcollective/mcollective/agent/windowsrun.rb':
      ensure => file,
      owner  => root,
      group  => root,
      mode   => 0644,
      source => 'puppet:///modules/windowsrun/windowsrun.rb',
      notify => Service['pe-mcollective'],
    }

  }

  if $::kernel == 'windows' {

    file { 'C:\ProgramData\PuppetLabs\mcollective\etc\plugins\mcollective\agent\windowsrun.ddl':
      ensure => file,
      owner  => Administrator,
      group  => Administrators,
      mode   => 0644,
      source => 'puppet:///modules/windowsrun/windowsrun.ddl',
      notify => Service['pe-mcollective'],
    }

    file { 'C:\ProgramData\PuppetLabs\mcollective\etc\plugins\mcollective\agent\windowsrun.rb':
      ensure => file,
      owner  => Administrator,
      group  => Administrators,
      mode   => 0644,
      source => 'puppet:///modules/windowsrun/windowsrun.rb',
      notify => Service['pe-mcollective'],
    }

  }

}  
