# == Class pdsh::install
#
class pdsh::install {
  package { $pdsh::package_name:
    ensure => present,
  }
}
