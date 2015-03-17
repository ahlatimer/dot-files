#################
### oh-my-zsh ###
#################

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="funky"
source $ZSH/oh-my-zsh.sh
plugins=(git git-completion git-flow-completion osx ruby rails textmate)

############
### PATH ###
############

# Homebrew
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/bin:/bin
export PATH=$PATH:/usr/sbin:/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/git/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/usr/local/include/bin
export PATH=$PATH:$HOME/bin

# Satisfaction tools
export PATH=$PATH:$HOME/workspace/tools/bin
export SATISFACTION_TOOLS=$HOME/workspace/tools

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rvm
export PATH=$PATH:$HOME/.rvm/bin

##############
### Editor ###
##############

export EDITOR=vim

#################
### Tmuxifier ###
#################

export TMUXIFIER_LAYOUT_PATH=~/.tmuxifier/layouts
DISABLE_AUTO_TITLE=true
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="2357536"
[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"

############
### Chef ###
############

export CHEF_USER='ahlatimer'

###############
### Aliases ###
###############

alias android_host='~/devs/scripts/getsatisfaction/android_host.sh'
alias beer='bundle exec rake'
alias brake="bundle exec rake"
alias c='clear'
alias dev='cd ~/devs/web'
alias ll='ls -lA'
alias psgrep='ps aux | grep'
alias ss="script/satisfaction"
alias start_m='sudo launchctl start com.meraki.agentd'
alias stop_m='sudo launchctl stop com.meraki.agentd'
alias xcode="open *.xcodeproj"

# cd aliases
alias c1='gs satisfaction'
alias c2='gs consumer'
alias svs='gs services'
alias lr='oss lazy_resource'
alias adk='cd ~/devs/android/adk'
alias editor='cd app/assets/javascripts/vendor/jquery-editor'

# git aliases
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='gc master'
alias gpo='git fetch; git pull --rebase origin'
alias gst='git status'
alias gsu='git submodule update --init'
alias remove_merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

function gs() {
  cd ~/workspace;
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
