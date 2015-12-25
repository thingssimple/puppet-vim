class vim::vundle {
  $home = "/Users/${::boxen_user}"

  file { [
      "${home}/.vim",
      "${home}/.vim/bundle",
    ]:
    ensure => directory
  }

  repository { "${home}/.vim/bundle/Vundle.vim":
    source => "VundleVim/Vundle.vim"
  }
}
