export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/zsh/functions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history # save timestamp and runtime information
setopt inc_append_history #To save every command before it is executed 
setopt hist_verify # perform history expansion and reload the line into the editing buffer
setopt hist_expire_dups_first # allow dups, but expire old ones when I hit HISTSIZE
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space # Remove command lines from the history list when the first character on the line is a space
setopt share_history #To retrieve the history file everytime history is called upon.

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# enable edit command in $EDITOR
autoload -z edit-command-line
zle -N edit-command-line

#use vim key map scheme
bindkey -v
#<ESC>+v edit command in $EDITOR
bindkey -M vicmd v edit-command-line

