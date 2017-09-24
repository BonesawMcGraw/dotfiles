# Created by newuser for 5.3.1

# Make ranger drop into viewed directory
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

# Import coloscheme from "wal"
#export PATH="/home/paul/.config/wal:$PATH"
(wal -r -t &)

# Define "wal-set" for wal
export PATH="/home/paul/.config/wal/wal-set:$PATH"

# Define pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#Use powerline
export PYTHONPATH=/usr/lib/python3.6/site-packages
powerline-daemon -q
source $PYTHONPATH/powerline/bindings/zsh/powerline.zsh
#if [[ -r /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

#Disable blinking cursor
#echo -e '33[?17;0;127c'
