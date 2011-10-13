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
export PATH=$HOME/local/node/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/usr/local/include/bin:$HOME/bin
export DYLD_LIBRARY_PATH=/usr/local/include/vtk-5.6:$DYLD_LIBRARY_PATH
plugins=(git osx ruby rails textmate)

alias c='clear'
alias dev='cd ~/devs/webdev/railsdev'
alias db='dev; cd dailybooth;'
# alias oss='cd ~/devs/webdev/oss;'
alias tunnlr='ssh  -nNt -g -R :11593:0.0.0.0:3000 tunnlr2104@ssh1.tunnlr.com'
alias web_log='ssh web01.staging tail -f /var/www/current/log/production.log'
alias api_log='ssh client01.staging tail -f /var/www/current/log/production.log'
alias ll='ls -lA'
alias rake='bundle exec rake'

function oss() {
  if [[ $# -eq 1 ]]; then
    cd `find ~/devs/webdev/oss -name $1 -d 2`
  else
    cd ~/devs/webdev/oss
  fi
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && \. "$HOME/.rvm/scripts/rvm"
