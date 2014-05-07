# Public: Install Launchbar to /Applications
#
# http://www.obdev.at/products/launchbar/
#
# Sample Usage:
#
#   class { 'launchbar':
#     version => '5.6.4'
#   }
#
# or:
#
#   import 'launchbar'
#
# with hiera data for "launchbar::version"
#
class launchbar(
  $version = '5.6.4'
) {

  validate_re($version, '^\S+')

  package { 'Launchbar':
    ensure   => installed,
    provider => 'appdmg_eula',
    source   => "http://www.obdev.at/downloads/launchbar/LaunchBar-${version}.dmg",
  }
}
