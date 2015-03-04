# == Class pdsh::params
#
# This class is meant to be called from pdsh
# It sets variables according to platform
#
class pdsh::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'pdsh'
    }
    'RedHat', 'Amazon': {
      $package_name = 'pdsh'
    }
    default: {
      fail("${::operatingsystem} is not supported")
    }
  }
}
