typeset -gU cdpath fpath mailpath manpath path
typeset -gUT INFOPATH infopath

fpath=(
  $ZSH_CONFIG/completions
  $ZSH_CONFIG/functions
  /usr/local/share/zsh/site-functions
  $fpath
)

manpath=(
  /usr/local/MacGPG2/share/man
  /usr/local/share/man
  /usr/share/man
  $manpath
)

infopath=(
  /usr/local/share/info
  /usr/share/info
  $infopath
)

path=(
  ~/bin
  ~/.bin
  ~/.composer/vendor/bin
  /usr/local/MacGPG2/bin
  /usr/local/{bin,sbin}
  /usr/{bin,sbin}
  /{bin,sbin}
  $path
)
