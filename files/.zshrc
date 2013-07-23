# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="funky"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/git/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/local/include/bin:$HOME/bin
export PATH=$PATH:/Library/PostgreSQL/9.1/bin:/Users/ahlatimer/Dropbox/devs/web/getsatisfaction/tools/bin:/Users/ahlatimer/Dropbox/devs/web/getsatisfaction/satisfaction/script

export EDITOR=vim
export TMUXIFIER_LAYOUT_PATH=~/.tmuxifier/layouts
DISABLE_AUTO_TITLE=true

export CHEF_USER='ahlatimer'

plugins=(git git-completion git-flow-completion osx ruby rails textmate)

alias brake="bundle exec rake"
alias c='clear'
alias ccat='pygmentize -f 256 -O full,style=manni '
alias dev='cd ~/devs/web'
alias ll='ls -lA'
alias xcode="open *.xcodeproj"
alias psgrep='ps aux | grep'
alias stop_m='sudo launchctl stop com.meraki.agentd'
alias start_m='sudo launchctl start com.meraki.agentd'
alias android_host='~/devs/scripts/getsatisfaction/android_host.sh'

# cd aliases
alias c1='gs satisfaction'
alias c2='gs consumer'
alias svs='gs services'
alias lr='oss lazy_resource'
alias adk='cd ~/devs/android/adk'
alias editor='cd app/assets/javascripts/vendor/jquery-editor'

# git aliases
alias gst='git status'
alias gpo='git fetch; git pull --rebase origin integration'
alias gci='git checkout integration'
alias gcb='git checkout -b'
alias gc='git checkout'
alias remove_merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

function gs() {
  dev; cd getsatisfaction;
  if [[ $# -eq 1 ]]; then
    cd $1
  fi
}

function oss() {
  if [[ $# -eq 1 ]]; then
    cd `find ~/devs/oss -name $1 -d 2`
  else
    cd ~/devs/oss
  fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && \. "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

rvm default

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
