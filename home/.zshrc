# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cpanm gem git git-flow history-substring-search node npm perl pip python rake redis-cli ruby svn zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# no autocorrect
unsetopt correct_all

# editor
export EDITOR=vim

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# additional paths
export PATH=~/bin:/usr/local/bin:$PATH

# additional env variables

# redis passwords
export \
  REDIS_TEST=X8d1RNWslsUM9gn \
  REDIS_STAGE=ED5S2273v4e0864 \
  REDIS_PROD=Q1728u6P7edmS59

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# perl
source ~/perl5/perlbrew/etc/bashrc
alias -s pm=gvim

# python
source ~/.pythonbrew/etc/bashrc

# node
source ~/nvm/nvm.sh
#alias node="env NODE_NO_READLINE=1 rlwrap node"

# java
export JAVA_HOME=$HOME/java/jre
export PATH=$JAVA_HOME/bin:$PATH
alias -s java=gvim

# java ant
export ANT_HOME=$HOME/java/modules/ant
export PATH=$ANT_HOME/bin:$PATH

# misc suffix aliases
alias -s pdf=evince
alias -s tex=gvim
alias -s odt=libreoffice

function gvim () { (/usr/bin/gvim -f "$@" &) }
