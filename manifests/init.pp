include homebrew

class vim {
  package { 'vim':
    ensure => present
  }
}
