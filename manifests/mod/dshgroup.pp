# pdsh:mod::dshgroup
#
# @summary Install plugin module for dsh group support
#
# @example
#   include pdsh::mod::dshgroup
class pdsh::mod::dshgroup {
  include pdsh

  package { 'pdsh-mod-dshgroup':
    ensure => present,
  }
}
