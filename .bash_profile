# terminal colors
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# flutter
export PATH=$PATH:~/flutter/flutter/bin

# aliases
alias ls='ls -GFh'
alias ll='ls -la' 
## copy own public ssh key
alias copyssh='pbcopy < ~/.ssh/id_rsa.pub'
# get last git tag
alias lasttag='git describe --tags --abbrev=0'

## alias for get current absoute path
alias getpath=' echo $(cd $(dirname "$1") && pwd -P)/$(basename "$1")'

## local webserver
alias servethis='python -m SimpleHTTPServer 8000'
alias serve:php='php -S 0.0.0.0:8080'
alias serve:node='http-server .'
alias serve:python='servethis'

## alias for npm run build
alias npb='npm run build'
alias npt='npm run test'
alias nps='npm run start'
alias npd='npm run dev'
alias npl='npm run lint'
alias nplf='npm run lint:fix'

## short docker commands
alias stop-all-docker-container='docker stop $(docker ps -a -q)'
alias rm-all-docker-container='docker rm $(docker ps -a -q)'
alias remove-all-docker-container='docker rm $(docker ps -a -q)'
alias remove-all-docker-images='docker rmi $(docker images -a -q)'
alias rm-all-docker-images='remove-all-docker-images'
alias get-container-ip="docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias reset-gitignore="git rm -r --cached . && git add . && git commit -m \"fixed untracked files\""
alias gitignore-fix='reset-gitignore'
## easy ssh
alias ssh-jump='gcloud compute ssh --project digital-h --zone europe-west3-c google@instance-1'

## react native open developer menu in android emulato
alias android-open-developer-menu='adb shell input keyevent 82'

entercontainer() {
    docker exec -it "$1" /bin/bash
}

# clean local branches
alias git-clean-branches="git branch --merged >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches"

# get gcloud project id
alias get-project-id="gcloud config get-value project"

# alias to get back quickly
alias cd.="cd .."
alias cd..="cd ../.."
alias cd2="cd.."
alias cd...="cd ../../.."
alias cd3="cd..."
alias cd....="cd ../../../.."
alias cd4="cd...."
alias cd.....="cd ../../../../.."
alias cd5="cd....."
alias cd......="cd ../../../../../.."
alias cd6="cd......"
alias cd.......="cd ../../../../../../.."
alias cd7="cd......."

#alias to clean npm 
alias rmnpm="rm package-lock.json && rm -rf node_modules"
alias rmnpmi="rmnpm && npm install"

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

# easy service reload and control
alias servicereload="sudo launchctl stop"
alias servicelist="ll /System/Library/LaunchDaemons/"

# easy sass compiling
alias sass="docker run -it --rm -v \$(pwd):\$(pwd) -w \$(pwd) jbergknoff/sass"


# wp cli bash completion
source /Users/simonhansen/scripts/wp-completion.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/simonhansen/google-cloud-sdk/path.bash.inc' ]; then . '/Users/simonhansen/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/simonhansen/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/simonhansen/google-cloud-sdk/completion.bash.inc'; fi


export ANDROID_HOME=~/Library/Android/sdk
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
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

