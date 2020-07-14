# == Class: zendserver::service
#   Manage Zend Server services. The class should not be called directly.
#   You can though "notify/require" Service['zend-server'] to
class zendserver::service inherits zendserver {
  if ($manage_service) {
    $ensure = 'running'
    $enable = true
  } else {
    $ensure = undef
    $enable = undef
  }
  service { 'zend-server':
    ensure     => $ensure,
    enable     => $enable,
    hasrestart => true,
    hasstatus  => true,
    require    => Package[$zendserver::install::zendserverpkgname],
  }
}
