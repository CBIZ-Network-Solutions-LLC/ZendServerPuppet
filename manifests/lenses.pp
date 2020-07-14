class zendserver::lenses {
  file { "/usr/share/augeas/lenses/dist/phpvars.aug":
    ensure  => 'present',
    source  => "puppet:///modules/php/phpvars.aug",
    owner   => 0,
    group   => 0,
    mode    => '0644',
  }

  file { "/usr/share/augeas/lenses/dist/php.aug":
    ensure  => 'present',
    source  => "puppet:///modules/php/php.aug",
    owner   => 0,
    group   => 0,
    mode    => '0644',
  }
}