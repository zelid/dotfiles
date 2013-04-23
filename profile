# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# all programs I install from sources have --prefix=~/opt
# so add /opt/bin to path too
if [ -d "$HOME/opt/bin" ] ; then
  PATH="$PATH:$HOME/opt/bin"
fi

# to use 256 colors in tmux, should be started as 'tmux -2'
# http://unix.stackexchange.com/questions/1045/getting-256-colors-to-work-in-tmux
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# to enable mouse in 'mc' when using tmux
# http://habrahabr.ru/post/127133/
if [ $TERM = "screen" ]; then
    export TERM=xterm
fi
if [ -n "$TMUX" ]; then
    export COLORTERM=rxvt
fi

# Python virtualenv wrapper support
export WORKON_HOME="$HOME/.virtualenvs"
#source virtualenvwrapper_bashrc
