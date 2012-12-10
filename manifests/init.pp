# == Class: module_template
#
# describe what the modules main class does
#
# === Parameters
# [*enable*]
#   present or absent, activate module_template with this switch
#
# === Example Usage
#
#   include module_template
#
# This is a call to module_template with complete args
#
#   class { 'module_template':
#     ensure => present,
#   }
#
class module_template (
  $enable = hiera('enable', present)
) {
  validate_re($enable, [ '^present', '^absent' ])
}
