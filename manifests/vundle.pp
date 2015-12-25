class vim::vundle {
  $home = "/Users/${::boxen_user}"

  file { [
      "${home}/.vim",
      "${home}/.vim/bundle",
    ]:
    ensure => directory
  }

  file { "${home}/.vimrc":
    ensure => present
  }

  repository { "${home}/.vim/bundle/Vundle.vim":
    source => "VundleVim/Vundle.vim"
  }

  file_line { "Add vundle to rtp":
    path => "${home}/.vimrc",
    line => "set rtp+=~/.vim/bundle/Vundle.vim"
  }

  file_line { "Begin vundle":
    path => "${home}/.vimrc",
    line => "call vundle#begin()"
  }

  file_line { "End vundle":
    path => "${home}/.vimrc",
    line => "call vundle#end()"
  }
}
