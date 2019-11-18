autoload -Uz compinit

zstyle ':completion::complete:*' use-cache $ZSH_COMP_CACHE
zstyle ':completion::complete:*' cache-path $ZSH_COMP_CACHE_DIR

# completion; use cache if updated within 24h
if [[ -n $ZSH_COMP_CACHE_DIR/.zcompdump(#qN.mh+24) ]]; then
  compinit -d $ZSH_COMP_CACHE_DIR/zcompdump;
else
  compinit -C -d $ZSH_COMP_CACHE_DIR/zcompdump;
fi;
