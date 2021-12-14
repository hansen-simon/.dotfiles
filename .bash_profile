# terminal colors
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# flutter
export PATH=$PATH:~/flutter/flutter/bin


# mysql terminal commands
export PATH=/usr/local/mysql/bin:$PATH

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\[\033[00m\] $ "


# git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# wp cli bash completion
source /Users/simonhansen/scripts/wp-completion.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/simonhansen/google-cloud-sdk/path.bash.inc' ]; then . '/Users/simonhansen/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/simonhansen/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/simonhansen/google-cloud-sdk/completion.bash.inc'; fi


export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
export PATH=${PATH}:~/Library/Android/sdk:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools
export PATH="/usr/local/opt/libxml2/bin:$PATH"


# add more common .bashrc file
source ~/.bashrc
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# add make file autocompletion
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

# load shared profile (zsh and bash)
source ~/.profile
