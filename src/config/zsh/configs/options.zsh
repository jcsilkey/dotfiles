if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
  setopt combiningchars
fi

setopt \
    rc_quotes \
    auto_cd \
    complete_aliases \
    no_flow_control \
    csh_null_glob \
    extended_glob \
    prompt_subst

unsetopt \
    list_beep
