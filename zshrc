#/bin/zsh

# Killer: share history between multiple shells
setopt SHARE_HISTORY
#
# # If I type cd and then cd again, only save the last one
setopt HIST_IGNORE_DUPS
#
# # Even if there are commands inbetween commands that are the same, still only save the last one
setopt HIST_IGNORE_ALL_DUPS


DEFAULT_USER=alex
if [[ ! `hostname -s` =~ 'submit-3' ]]; then
  source $HOME/.zsh_config/zsh_config
fi

source $HOME/.zsh_config/zsh_perso

source $HOME/.zsh_config/zsh_alias

export PATH=$PATH:/opt/Trelis-16.1/bin
export PATH=$PATH:/usr/local/cuda-9.0/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64

export LD_LIBRARY_PATH=/home/alex/.local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/alex/opt/moab/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=/home/alex/opt/moab/lib:$LIBRARY_PATH
export CPLUS_INCLUDE_PATH=/home/alex/opt/moab/include:$CPLUS_INCLUDE_PATH
export C_INCLUDE_PATH=/home/alex/opt/moab/include:$C_INCLUDE_PATH
source $HOME/.zsh_config/zsh_ohmzsh

# PyNE Environment Settings
export PATH="/home/alex/.local/bin:${PATH}"

# MCNP
export DATAPATH
#DATAPATH="/mnt/sdb/MCNP/MCNP_DATA"
PATH=$PATH:'/mnt/sdb/MCNP/MCNP_CODE/bin'

# serpent
export PATH=/mnt/sdb/Serpent/src/:$PATH

# Scale
PATH=$PATH:'/mnt/sdb/SCALE/cmds/'
