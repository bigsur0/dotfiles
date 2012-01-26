source ~/.bashrc

#Source local overrides
if [ -f $HOME/.bash_profile.local ]; then
    source $HOME/.bash_profile.local
fi
