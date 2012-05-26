# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="funky"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/usr/local/include/bin:$HOME/bin
export PATH=$PATH:/Library/PostgreSQL/9.1/bin
export DYLD_LIBRARY_PATH=/usr/local/include/vtk-5.6:$DYLD_LIBRARY_PATH
plugins=(git git-completion git-flow-completion osx ruby rails textmate)

alias api_log='ssh client01.staging tail -f /var/www/current/log/production.log'
alias brake="bundle exec rake"
alias c='clear'
alias ccat='pygmentize -f 256 -O full,style=manni '
alias dev='cd ~/devs/web'
alias e='mvim .'
alias ios='cd ~/devs/ios'
alias ll='ls -lA'
alias tunnlr='ssh  -nNt -g -R :11593:0.0.0.0:3000 tunnlr2104@ssh1.tunnlr.com'
alias web_log='ssh web01.staging tail -f /var/www/current/log/production.log'
alias xcode="open *.xcodeproj"

# git aliases
alias gst='git status'
alias gpo='git pull --rebase origin staging'
alias gpom='git pull origin master'
alias gpush='git push origin master'

function db() {
  dev; cd dailybooth;
  if [[ $# -eq 1 ]]; then
    cd $1
  fi
}

function gcmp() {
  git checkout staging
  git merge dev
  git push origin staging
  git checkout dev
}

function gcrp() {
  git checkout staging
  git rebase dev
  git push origin staging
  git checkout dev
}

function oss() {
  if [[ $# -eq 1 ]]; then
    cd `find ~/devs/oss -name $1 -d 2`
  else
    cd ~/devs/oss
  fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && \. "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

rvm default
