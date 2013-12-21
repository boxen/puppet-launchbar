# This is a placeholder class.
class launchbar {
  package { 'Launchbar':
    ensure   => installed,
    provider => 'appdmg_eula',
    source   => 'http://www.obdev.at/downloads/launchbar/LaunchBar-5.6.2.dmg',
  }
}
