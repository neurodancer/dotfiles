# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ "$PS1" != "" ]; then
    . ~/.bash_interactive
else
    . ~/.bash_batch
fi

export TRNINIT=$HOME/.trninit
export PGPPATH=$HOME/.pgp
export LANGUAGE=C
export LC_ALL=C
export LANG=C

