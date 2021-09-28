HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit

unsetopt BEEP

cd
eval "$(starship init zsh)"

source ~/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='ls --color=auto'
alias ll='ls -lah'
