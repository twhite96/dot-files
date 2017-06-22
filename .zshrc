ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xxf"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
  DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
  DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirhistory brew bower chucknorris dircycle gitfast git-extras jsontools node npm osx repo sudo urltools web-search dirpersist history-substring-search last-working-dir safe-paste yarn)

source $ZSH/oh-my-zsh.sh

# Timing
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "



# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

export TTC_GITBOT='gitlog'
export TTC_REPOS_DEPTH=8
export TTC_SAY_BOX='cat'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/Desktop/Git_Repositories/checkyoself, ~/Desktop/Git_Repositories/TWBlog, ~/Desktop/Git_Repositories/npm_modules, ~/Desktop/Git_Repositories/Weather_App, ~/Desktop/Git_Repositories/new_resume, ~/Desktop/Git_Repositories/portfolio, ~/Desktop/Git_Repositories/freeCodeCamp, ~/Desktop/Git Repositories/exercism-solutions, ~/Desktop/Git_Repositories/web-developer-bootcamp'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Pittsburgh'

# Set to false if you're an imperial savage. <3
export TTC_CELSIUS=false

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=true

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=10

# Twitter api keys
export TTC_CONSUMER_KEY=''
export TTC_CONSUMER_SECRET=''
export TTC_ACCESS_TOKEN=''
export TTC_ACCESS_TOKEN_SECRET=''

# Note: in tiny-terminal-care < 1.0.7, the recommended variables for the Twitter
# API keys were the ones before. As of 1.0.8, they are deprecated
# (because the names are too generic), but will still be supported
# until the next major version.
# export CONSUMER_KEY='...'
# export CONSUMER_SECRET='...'
# export ACCESS_TOKEN='...'
# export ACCESS_TOKEN_SECRET='...'

 # ------------------------------------------------------------------
 # Go Paths
 # ------------------------------------------------------------------

export GOROOT=$HOME/golang/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Desktop/Git_Repositories


# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------

alias gaa='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gmsg='git commit -m'
alias gmsga='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias git_down='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gfa='git fetch --all'


# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias glg1='git lg1'
alias glg2='git lg2'
alias glg='git lg'


# -------------------------------------------------------------------
# Capistrano aliases
# -------------------------------------------------------------------

alias capd='cap deploy'


# -------------------------------------------------------------------
# Symfony aliases
# -------------------------------------------------------------------



# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------

alias cl='clear'
alias bi= 'bower install'
alias bl= 'bower list'
alias bs= 'bower search'
alias npming='npm install -g'
alias ying='yarn install -g'
alias npms='npm search'
alias h='history'
alias help='man'
alias whereami='display_info'
alias javaide='open -a /Applications/IntelliJ\ IDEA.app'
alias phpide='open -a /Applications/PHPStorm.app'
alias atom='open -a /Applications/Atom.app'
alias webide='open -a /Applications/WebStorm'
alias apmi='apm install'
alias hypin="hpm install"
alias brewi='brew install'
alias brupg='brew upgrade'
alias brupd='brew update'
alias szsh='source ~/.zshrc'
alias srg='surge _site/'
alias jb='jekyll build'
alias netd='netlify deploy'
alias git_up='git standup'
alias addup='git remote add upstream'
alias getup='git fetch upstream'
alias chkmast='git checkout master'
alias mergethatshit='git merge upstream/master'
alias gst='git stash'
alias gsta='git stash apply'
alias hero='git push heroku master'
alias takecare='tiny-care-terminal'
alias bsync='browser-sync start --server'
alias breload='browser-sync reload'
alias jopt='jpeg-recompress --accurate --quality high'
alias popt='pngcrush -brute'
alias jeks='jekyll serve'
