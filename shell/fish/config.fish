
# The next line updates PATH for the Google Cloud SDK.
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

########################
#         ENV          #
########################
set -g -x GOPATH $HOME/go
set -g -x GOPATH $GOPATH:$HOME/dev
set -g -x GONOSUMDB "github.com/lovoo/*"
set -g -x GOPRIVATE "github.com/lovoo/*"
set -g -x GO111MODULE "auto"
set -g -x GOBIN $HOME/go/bin
set -g -x PATH $PATH:$GOBIN
set -g -x ANDROID_HOME $HOME/Library/Android/sdk
set -g -x PATH $PATH:$ANDROID_HOME/tools
set -g -x PATH $PATH:$ANDROID_HOME/platform-tools

########################
#        ALIAS         #
########################
alias cdh='cd $HOME'
alias cdd='cd $HOME/dev'
alias cdg='cd $HOME/dev/src/github.com/lovoo'

alias goland='/usr/local/bin/goland .'
alias idea='/usr/local/bin/idea .'

alias k='kubectl'
alias kc='kubectx'
alias kn='kubens'

alias pfwd='kubectl port-forward webviews-dev-0 8097'
alias pfwp='kubectl port-forward webviews-prod-0 8097'

alias goka-start-kafka="fish -c 'cd ~/dev/src/github.com/lovoo/goka/examples; make start'"
alias goka-stop-kafka="fish -c 'cd ~/dev/src/github.com/lovoo/goka/examples; make stop'"

alias gitrl='git branch | grep -v "master\|main\|develop" | xargs git branch -d'

pyenv init - | source
