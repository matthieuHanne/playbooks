# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

xrdb ~/.Xressources

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="ys"

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias sshconfig="sudo vim /etc/ssh/ssh_config"
alias sshdconfig="sudo vim /etc/ssh/sshd_config"
alias xresconfig="vim ~/.Xresources"
alias xresconfig="vim ~/.Xresources"

DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
