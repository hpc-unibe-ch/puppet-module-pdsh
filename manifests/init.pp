# == Class: pdsh
#
# Manages pdsh installation and configuration.
#
# === Parameters
#
# none
#
class pdsh inherits ::pdsh::params {

  # validate parameters here

  class { 'pdsh::install': } ->
  class { 'pdsh::config': } ->
  Class['pdsh']
}
