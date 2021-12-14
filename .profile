

# set terminal encoding to utf8, important for gem/pods                         
export LC_ALL=en_US.UTF-8   

# aliases
alias ls='ls -GFh'
alias ll='ls -la'
## copy own public ssh key
alias copyssh='pbcopy < ~/.ssh/id_rsa.pub'


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

## alias for git
alias lasttag='git describe --tags --abbrev=0'
alias gitlasttag='lasttag'
alias g='git'
alias gs='git status'
alias gp='git push'
alias gco='git checkout'
alias gci='git commit'
alias gb='git branch'

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
alias ssh-fabucar-staging='gcloud beta compute ssh --zone "europe-west3-c" "instance-1"  --project "fabucar-staging"'
alias ssh-fabucar-prod='gcloud beta compute ssh --zone "europe-west3-c" "instance-4"  --project "fabucar-prod"'

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

#alias to start common apps
alias chrome='open -a "Google Chrome"'

# easy service reload and control
alias servicereload="sudo launchctl stop"
alias servicelist="ll /System/Library/LaunchDaemons/"

# easy sass compiling
alias sass="docker run -it --rm -v \$(pwd):\$(pwd) -w \$(pwd) jbergknoff/sass"
 
