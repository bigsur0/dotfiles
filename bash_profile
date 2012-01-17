export PATH="~/bin:$PATH"
cowsay `date`

set -o vi

source ~/dotfiles/bash/bashrc

source ~/dotfiles/bash/prompts
source ~/dotfiles/bash/completion
source ~/dotfiles/bash/postgres


#Source local overrides
if [ -f $HOME/.bash_profile.local ]; then
    source $HOME/.bash_profile.local
fi
