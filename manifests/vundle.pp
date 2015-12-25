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

  file_line {
    path => "${home}/.vimrc",
    line => "set rtp+=~/.vim/bundle/Vundle.vim"
  }

  file_line {
    path => "${home}/.vimrc",
    line => "call vundle#begin()"
  }

  file_line {
    path => "${home}/.vimrc",
    line => "call vundle#end()"
  }
}
