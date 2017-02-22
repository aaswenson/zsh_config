#!/bin/zsh

# Killer: share history between multiple shells
setopt SHARE_HISTORY
#
# # If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS
#
# # Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS


DEFAULT_USER=mouginot
if [[ ! `hostname -s` =~ 'submit-3' ]]; then
  source $HOME/.zsh_config/zsh_config
fi

source $HOME/.zsh_config/zsh_perso

source $HOME/.zsh_config/zsh_alias




export PATH=$PATH:/opt/Trelis-16.1/bin


source $HOME/.zsh_config/zsh_ohmzsh
