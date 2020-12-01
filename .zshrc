ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=""
# SPACESHIP_PROMPT_DEFAULT_PREFIX="\ue7ba"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL="\uf0e7"
SPACESHIP_CHAR_PREFIX="\uf025 "
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_COLOR_SUCCESS=yellow
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL="\uf898 "

# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUBY_SYMBOL="\ue791 "

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="\ue70a " # disable git prefix
# SPACESHIP_GIT_BRANCH_PREFIX="\ue702" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX=" " # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX="\ufbd9 "
SPACESHIP_GIT_STATUS_SUFFIX=""

# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
SPACESHIP_SWIFT_SYMBOL="\ufbe3 "

# GOLANG
SPACESHIP_GOLANG_PREFIX="go:("
SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL="\ue724 "

# DOCKER
SPACESHIP_DOCKER_PREFIX="docker("
SPACESHIP_DOCKER_SUFFIX=") "
SPACESHIP_DOCKER_SYMBOL="\uf308 "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL="\ue73c "


# Z jump
. ~/z.sh


# setopt AUTO_NAME_DIRS
# setopt CDABLE_VARS
# TWBlog=/Volumes/Working\ Drive/Git_Repositories/TWBlog
# checkyoself=/Volumes/Working\ Drive/Git_Repositories/checkyoself
# checkyoself-docs=/Volumes/Working\ Drive/Git_Repositories/checkyoselfDocs
# dev-research=/Volumes/Working\ Drive/Git_Repositories/devResearch
# book-finder=/Volumes/Working\ Drive/Git_Repositories/bookFinder
# portfolio-v6=/Volumes/Working\ Drive/Git_Repositories/portfoliov6
# tiffany.blog=/Volumes/Working\ Drive/Git_Repositories/tiffanyBlog

# resume=/Volumes/Working\ Drive/Git_Repositories/resume

# Apps

alias ci="code-insiders"
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'

# Kill Chrome because it gets stuck sometimes
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE=false

# Uncomment following line if you want to disable colors in ls
  DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirhistory brew dircycle gitfast git-extras jsontools node npm osx repo sudo urltools web-search dirpersist history-substring-search last-working-dir safe-paste yarn zsh-completions)

source $ZSH/oh-my-zsh.sh
# Timing
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan,bold'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=magenta'

ZSH_HIGHLIGHT_STYLES[cursor]='bg=pink'

# To define styles for nested brackets up to level 4
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[root]='bg=red'

# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

# Git Repos Refresh
export TTC_GITBOT='gitlog'
# export TTC_REPOS_DEPTH=2
export TTC_SAY_BOX='parrot'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='/Users/tiffanywhite/Desktop/Git_Repositories/checkyoself,/Users/tiffanywhite/Desktop/Git_Repositories/resume,/Users/tiffanywhite/Desktop/Git_Repositories/portfolio-v5,/Users/tiffanywhite/Desktop/Git_Repositories/freeCodeCamp,/Users/tiffanywhite/Desktop/Git_Repositories/gatsby,/Users/tiffanywhite/Desktop/Git_Repositories/write-good-component,/Users/tiffanywhite/Desktop/Git_Repositories/dev.to,/Users/tiffanywhite/Desktop/Git_Repositories/TWBlog,/Users/tiffanywhite/Desktop/Git_Repositories/new-post-gatsby-starter-blog,/Users/tiffanywhite/Desktop/Git_Repositories/wikipedia-viewer,/Users/tiffanywhite/Desktop/Git_Repositories/various-algorithms,/Users/tiffanywhite/Desktop/Git_Repositories/js-dev-reads,/Users/tiffanywhite/Desktop/Git_Repositories/cs-math-for-web-devs,/Users/tiffanywhite/Desktop/Git_Repositories/react-bootcamp,/Users/tiffanywhite/Desktop/Git_Repositories/gatsby-bootcamp,/Users/tiffanywhite/Desktop/Git_Repositories/book-finder,/Users/tiffanywhite/Desktop/Git_Repositories/codesandbox-client,/Users/tiffanywhite/Desktop/Git_Repositories/its-your-canvas,/Users/tiffanywhite/Desktop/Git_Repositories/json2csv-app,/Users/tiffanywhite/Desktop/Git_Repositories/boutique-iphone-lens-store'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Steelton, PA'

# Set to false if you're an imperial savage. <3
export TTC_CELSIUS=false

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=false

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=10

 # ------------------------------------------------------------------
 # nvm
 # ------------------------------------------------------------------

 # This loads nvm

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

export GOROOT=$HOME/golang
export PATH=$PATH:$GOROOT/bin
# export GOPATH=$HOME/Desktop/Git_Repositories

#--------------------------------------------------------------------
# Ruby Path fixes
#--------------------------------------------------------------------

export PATH=$(brew --prefix)/opt/openssl/bin:$PATH
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export PKG_CONFIG_PATH=$(brew --prefix)/opt/openssl/lib/pkgconfig

#--------------------------------------------------------------------
# Mosh fix
#--------------------------------------------------------------------

export PATH=/usr/local/bin:$PATH

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
# alias git='hub'

# leverage an alias from the ~/.gitconfig
# alias gh='git hist'
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
# alias python=/usr/local/bin/python3
alias cl='clear'
alias bi= 'bundle install'
alias bl= 'bower list'
alias bs= 'bower search'
alias npming='npm install -g'
alias y='yarn'
alias npms='npm search'
alias h='history'
alias help='man'
alias whereami='display_info'
alias did="vim +'normal Go' +'r!date' ~/did.txt"
# alias javaide='open -a /Applications/IntelliJ\ IDEA.app'
# alias phpide='open -a /Applications/PHPStorm.app'
# alias atom='open -a /Applications/Atom.app'
alias code='open -a /Applications/Visual\ Studio\ Code.app'
alias webide='open -a /Applications/WebStorm.app'
alias apmi='apm install'
alias hypin="hpm install"
alias brewi='brew install'
alias brupg='brew upgrade'
alias brupd='brew update'
alias szsh='source ~/.zshrc'
alias srg='surge'
alias jb='jekyll build'
# alias netd='netlify deploy'
alias pushor="git push -u origin master"
alias git_up='git standup'
alias addup='git remote add upstream'
alias getup='git fetch upstream'
alias chkmast='git checkout master'
alias mergethatshit='git merge upstream/master'
alias gst='git stash'
alias gitsta='git stash apply'
alias ohshit='git revert --no commit'
alias hero='git push heroku master'
alias takecare='tiny-care-terminal'
alias bsync='browser-sync start --server'
alias breload='browser-sync reload'
alias jopt='jpeg-recompress --accurate --quality medium --min 40'
alias popt='pngcrush -brute'
alias jeksth='bundle exec jekyll serve --livereload --open-url --port 4001 --drafts --future --host 0.0.0.0'
alias jeksd='bundle exec jekyll serve --livereload --open-url --port 4000 --drafts --future --host 0.0.0.0'
alias jeksttt='bundle exec jekyll serve --livereload --open-url --port 4002 --drafts --future --host 0.0.0.0'
alias jeksg='bundle exec jekyll serve --livereload --open-url --port 4003 --drafts --future --host 0.0.0.0'
alias jeksp='bundle exec jekyll serve --livereload --open-url --port 4004 --drafts --future --host 0.0.0.0'
alias jeksfit='bundle exec jekyll serve --livereload --open-url --port 3040 --drafts --future --host 0.0.0.0'
alias jeksb='bundle exec jekyll serve --livereload --open-url --port 3030 --drafts --future --host 0.0.0.0'
alias gitor='git remote add origin'
alias pushit='git push -u origin master'
alias free='git pull --rebase upstream master'
alias slate='./deploy.sh'
alias bug='git pull upstream master'
alias start='torus run bin/rails server'
alias console='torus run bin/rails console'
alias killpry='lsof -wni tcp:3000'
alias gdev='gatsby develop --port 8000 --host 0.0.0.0'
alias bdev='gatsby develop --port 8001 --host 0.0.0.0'
alias phdev='gatsby develop --port 8002 --host 0.0.0.0'
alias elecdev='gatsby develop --port 8003 --host 0.0.0.0'
alias builddev='gatsby develop --port 8004 --host 0.0.0.0'
alias git=hub
alias pullup='git pull upstream master'
alias lint='./node_modules/.bin/eslint --init'
alias gac="ga . && gcmsg"
alias gpo="gp && go"
alias gundo="git undo"
alias yo="yo"
alias vs="code ."
alias dewebpng='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.png'
alias dewebpgif='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.gif'
alias dewebpjpg='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.jpg'
alias mp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"
alias mkv="youtube-dl --merge-output-format mkv"
alias mp4="youtube-dl --merge-output-format mp4"
alias mp3play="youtube-dl -ict --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 "
# alias docs="GIT_USER=twhite96 CURRENT_BRANCH=source yarn run publish-gh-pages"
# source $(dirname $(gem which colorls))/tab_complete.sh
alias ls='colorls --dark --sort-dirs --report -A --gs'
alias lc='colorls --dark --sort-dirs --report -A --gs --tree'
alias newpost="./scripts/newPost.js"
alias newdraft="./scripts/newDraftPost.js"
alias newdd="./scripts/newDevDraftPost.js"
alias newcans="./scripts/newHeadphonesPost.js"
alias newbag="./scripts/newBagPost.js"
alias newfit="./scripts/newFitnessPost.js"
alias newscreen="./scripts/newHomescreenPost.js"
alias newdcans="./scripts/newDraftHeadphonesPost.js"
alias newdbag="./scripts/newDraftBagPost.js"
alias newdscreen="./scripts/newDraftHomescreenPost.js"
alias newdfit="./scripts/newFitDraftPost.js"
alias newdbk="./scripts/newFitDraftPost.js"
alias sssh="git secrets --install"
alias inspect="npx lockfile-lint --path yarn.lock --type yarn --validate-https --allowed-hosts yarnpkg.org"
alias inruby="rvm install 2.6.x --with-openssl-lib=/usr/local/opt/openssl/lib --with-openssl-include=/usr/local/opt/openssl/include"
alias b="yarn && yarn start"
alias jeksdoc="docker-compose up"
alias python=/usr/local/bin/python3
# push my changes to my github master branch and open the page
# The commit message will always be "push from terminal" since I'll probably just be adding more resources or checking things off when using this
alias pg-gh='cd ~/Desktop/Git_Repositories/personal-goals &&
  git add -A &&
  git commit -m "updates goals" &&
  git push &&
  open http://github.com/twhite96/personal-goals'
# exa file list
alias la="exa --git --color=automatic -x"
# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='pygmentize -O style=borland -f console256 -g'

alias myip='curl ip.appspot.com'
#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias flushDNS='dscacheutil -flushcache'

# Reload dns
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"


#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

alias l="exa -l"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias alz="alias | fzf"

############################
# mosh firewall workaround #
############################

alias firepower='sudo /usr/libexec/ApplicationFirewall/socketfilterfw'

########################
# Terminalizer Aliases #
########################

alias trex='terminalizer record'
alias tconfig='terminalizer config'
alias tren='terminalizer render'
alias tplay='terminalizer play'
alias tgen='terminalizer generate'
alias tshare='terminalizer share'

##################
# Timing Support #
##################

PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"

###################
# BUILDING PROMPT #
###################

# username --> %n
# machine name --> %m
# current location --> %~

# Main prompt (left)
# PROMPT='╭─$(nvm_prompt_info) $fg[magenta]$(get_pwd)%b
# ╰───$_SYMBOL'

# Main prompt (right)
# RPROMPT='$(check_git_prompt_info)'

# #############
# EMOJI BITS #
# #############

# Get more options:
# http://getemoji.com/
# https://unicode.org/emoji/charts/full-emoji-list.html
# Ctrl + Cmd + Space on Mac to open up the emoji keyboard
# EMOJI=(💩 👻 💀 ☠ 👽 👾 🤖 🐶 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐷 🐒 🦉 🦄 🐌 🐢 🦑 🐙 🐠 🐟 🐡 🐬 🦈 🐳 🐄 🐘 🍄 🌻 ☃️ ⛄️ ❄️ 🔥 🍌 🍍 🍓 🥝 🍭 🎨 🚀 🏖 🏝 💻 📚 🖌 🖍 📓 😜 🙄 🤓 👩🏻‍💻 👩🏻‍🚀 👸🏼 💃 🛀🏻 🤺 🖕🏻 ✌🏻 🤘🏻 👊🏻 👟 🎩 🐥 🦆 )
# function random_emoji {
#   echo -n "$EMOJI[$RANDOM%$#EMOJI+1] "
# }

fpath=(/usr/local/share/zsh-completions $fpath)

# Prompt symbols
# ➭ ✔ ✈ ✭ ✗ ➦ ✂ ✱
# _SYMBOL="%{$fg[red]%}➭%{$fg[yellow]%}➭%{$fg[cyan]%}➭ "
# _SYMBOL="<< $(random_emoji) >> "

# Pure Prompt
autoload -U promptinit; promptinit
prompt pure

# #####################
# Git Prompt Builder #
# #####################

# ZSH_THEME_GIT_PROMPT_PREFIX="["
# ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}]"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%} ✗"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"



# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
# function check_git_prompt_info() {
#   if git rev-parse --git-dir > /dev/null 2>&1; then
#       if [[ -z $(git_prompt_info) ]]; then
#           echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
#       else
#           echo "$(git_prompt_info)"
#       fi
#   fi
# }


######################
# NVM Prompt Builder #
######################

# ZSH_THEME_NVM_PROMPT_PREFIX="%{$fg[green]%}⬡ %{$fg[white]%}"
# ZSH_THEME_NVM_PROMPT_SUFFIX="%{$fg[white]%}"


########################
# Location Path Setter #
########################

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

function acp() {
  git add .
  git commit -m "Update something"
  git push
}

function zet() {
  git add .
  git commit -m "Add knowledge"
  git push
}

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source /Users/tiffanywhite/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

BROWSER=Chrome; export BROWSER
EDITOR=Code; export EDITOR

eval "$(hub alias -s)"
export GITHUB_TOKEN=$token

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.zshrc

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# export CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/readline/include"
# export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/readline/lib"

# export RBENV_ROOT=/usr/local/var/rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# echo -e "\033]6;1;bg;red;brightness;23\a"
# echo -e "\033]6;1;bg;green;brightness;52\a"
# echo -e "\033]6;1;bg;blue;brightness;72\a"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
export PATH="/usr/local/opt/openssl/bin:$PATH"
# export PATH="/usr/local/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# export PS1="\\$ "

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/opt/yarn-[1.22.4]/bin"
export PATH="$PATH:`yarn global bin`"
  # Set Spaceship ZSH as a prompt
  # autoload -U promptinit; promptinit
  # prompt spaceship
