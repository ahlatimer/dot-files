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

export CLASSPATH=$CLASSPATH:/Users/ahlatimer/aspectj1.6/lib/aspectjrt.jar

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin

alias dev='cd ~/devs/webdev/railsdev'
alias c='clear'
alias c-jes='cd ~/devs/c-jes'
alias mockup='cd ~/devs/webdev/mockups\ and\ breakdowns'
alias rvmgem='rvm 1.8.6,1.8.7,1.9.1 gem'
alias try='cd /Volumes/Users/andrewlat/Documents/TryPython'
alias oss='cd ~/devs/webdev/oss'
alias cont='cd ~/devs/contract'
alias dl='ruby ~/devs/webdev/railsdev/download.rb'

if [[ -s /usr/local/rvm/scripts/rvm ]] ; then source /usr/local/rvm/scripts/rvm ; fi
