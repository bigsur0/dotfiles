set -o vi

#RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

# add git completion
source /usr/local/etc/bash_completion.d/git-completion.bash

#artii "`date`"
cowsay "`date`"

source ~/dotfiles/bash/env_vars
source ~/dotfiles/bash/prompts
source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/functions
source ~/dotfiles/bash/postgres

#Bash completion is setup via:
#ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"

##
# Your previous /Users/rasikpandey/.bash_profile file was backed up as /Users/rasikpandey/.bash_profile.macports-saved_2011-04-19_at_15:28:02
##

# MacPorts Installer addition on 2011-04-19_at_15:28:02: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
