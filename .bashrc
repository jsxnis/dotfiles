#!/usr/bin/env bash

# VIM as default editor
export EDITOR=vim

# Path to the bash it configuration
export BASH_IT="/home/lorenzo/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-plain'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
# source $BASH_IT/bash_it.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/lorenzo/opt/google-cloud-sdk/path.bash.inc ]; then
  source '/home/lorenzo/opt/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/lorenzo/opt/google-cloud-sdk/completion.bash.inc ]; then
  source '/home/lorenzo/opt/google-cloud-sdk/completion.bash.inc'
fi

source $BASH_IT/bash_it.sh

export PATH="/home/lorenzo/.local/share/umake/bin:/home/lorenzo/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/bin:/home/lorenzo/.go/bin:/bin:/home/lorenzo/.go/bin:/home/lorenzo/.vimpkg/bin"
