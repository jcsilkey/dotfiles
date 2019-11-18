export HISTFILE="${ZSH_LOCAL}/zshistory"
export HISTORY_IGNORE="(exec '/Applications/VimR.app*')"
export HISTSIZE=10000
export SAVEHIST=10000

setopt \
    share_history \
    inc_append_history \
    extended_history \
    hist_no_store \
    hist_save_no_dups \
    hist_ignore_all_dups \
    hist_ignore_space \
    hist_verify

unsetopt \
    no_bang_hist

set histchars='@^#'

#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
