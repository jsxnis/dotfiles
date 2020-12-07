#!/usr/bin/env bash

export XDG_CONFIG_HOME=$HOME/.config
# VIM as default editor
export EDITOR=vim

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f /home/lorenzo/.LESS_TERMCAP ]] && . /home/lorenzo/.LESS_TERMCAP

# Path to the bash it configuration
export BASH_IT="/home/lorenzo/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-plain'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

export HISTTIMEFORMAT="%F %T | "

if [[ "$XDG_SESSION_DESKTOP" =~ i3 ]] || \
   [[ "$XDG_SESSION_DESKTOP" =~ "qtile-venv" ]]
then
    xrandr --auto
    xrandr --auto --output HDMI-1 --primary
    xrandr --auto --output DVI-I-1-1 --right-of HDMI-1
    xrandr --auto --output eDP-1 --right-of DVI-I-1-1
fi

. $BASH_IT/bash_it.sh

# Configuración para fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
eval "$(jump shell)"
eval "$(gh completion -s bash)"
export TERM=xterm-256color-italic
