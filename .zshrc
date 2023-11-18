# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ORDER
SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
)

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

# GIT
# Disable git symbol
SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL=""

# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUBY_SYMBOL=""

# XCODE
SPACESHIP_XCODE_PREFIX="xcode:("
SPACESHIP_XCODE_SUFFIX=") "
SPACESHIP_XCODE_SYMBOL=""

# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
SPACESHIP_SWIFT_SYMBOL=""

# GOLANG
SPACESHIP_GOLANG_PREFIX="go:("
SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL=""

# DOCKER
SPACESHIP_DOCKER_PREFIX="docker:("
SPACESHIP_DOCKER_SUFFIX=") "
SPACESHIP_DOCKER_SYMBOL=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
SPACESHIP_PYENV_SYMBOL=""

# Z jump
. $HOME/z.sh

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
  # DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git dirhistory brew dircycle gitfast git-extras jsontools node npm macos repo sudo urltools web-search dirpersist history-substring-search last-working-dir safe-paste yarn zsh-completions)

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


# ------------------------------------------------------------------
# Go Paths
# ------------------------------------------------------------------
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
export GOROOT=/usr/local/go


#--------------------------------------------------------------------
# Ruby Path fixes
#--------------------------------------------------------------------

export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"



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
alias gdown='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gfa='git fetch --all'
alias pushor="git push -u origin main"
alias addup='git remote add upstream'
alias gitup='git fetch upstream'
alias chmain='git checkout main'
alias merup='git merge upstream/main'
alias gst='git stash'
alias gitsta='git stash apply'
alias ohshit='git revert --no commit'


# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
# alias python=/usr/local/bin/python3
alias cl='clear'
alias bi= 'bundle install'
alias npming='npm install -g'
alias h='history'
alias help='man'
alias pyide='open -a /Applications/PyCharm.app'
alias pych="PyCharm ."
alias gol="GoLand ."
alias rus="open -a /Applications/RustRover.app"
alias lion="open -a /Applications/CLion.app"
alias rubyide='open -a /Applications/RubyMine.app'
alias goide='open -a /Applications/GoLand.app'
alias c='open -a /Applications/Visual\ Studio\ Code.app'
alias gitk='open -a /Applications/GitKraken.app'
alias brewi='brew install'
alias brupg='brew upgrade'
alias brupd='brew update'
alias szsh='source ~/.zshrc'
alias jopt='jpeg-recompress --accurate --quality medium --min 40'
alias popt='pngcrush -brute'
alias jeksthx='bundle exec jekyll serve --livereload --open-url --port 4001 --future --host 0.0.0.0 '
alias jeksth='bundle exec jekyll serve --livereload --open-url --drafts --future'
alias jeksd='bundle exec jekyll serve --livereload --open-url --drafts --future'
alias jeksttt='bundle exec jekyll serve --livereload --open-url --port 4002 --drafts --future --host 0.0.0.0'
alias jeksg='bundle exec jekyll serve --livereload --open-url --port 4003 --drafts --future --host 0.0.0.0'
alias jeksp='bundle exec jekyll serve --livereload --open-url --port 4004 --drafts --future --host 0.0.0.0'
alias jeksfit='bundle exec jekyll serve --livereload --open-url --port 3040 --drafts --future --host 0.0.0.0'
alias jeksb='bundle exec jekyll serve --livereload --open-url --port 3030 --drafts --future --host 0.0.0.0'
alias gitor='git remote add origin'
alias pushit='git push -u origin master'
alias free='git pull --rebase upstream master'
alias bug='git pull upstream master'
alias start='torus run bin/rails server'
alias console='torus run bin/rails console'
alias killpry='lsof -wni tcp:3000'
alias git=hub
alias pullup='git pull upstream master'
alias lint='./node_modules/.bin/eslint --init'
alias gac="ga . && gcmsg"
alias gpo="gp && go"
alias gundo="git undo"
alias yo="yo"
alias dewebpng='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.png'
alias dewebpgif='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.gif'
alias dewebpjpg='find . -name "*.webp" | xargs -I {} dwebp {} -o {}.jpg'
alias mp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"
alias mkv="youtube-dl --merge-output-format mkv"
alias mp4="youtube-dl --merge-output-format mp4"
alias mp3play="youtube-dl -ict --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 "

alias ls='colorls --dark --sort-dirs --report -A --gs'
alias lc='colorls --dark --sort-dirs --report -A --gs --tree'
alias jeksdoc="docker-compose up"

# exa file list
alias la="exa --git --color=automatic -x"
# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='pygmentize -O style=borland -f console256 -g'

alias wmyip='curl ip.appspot.com'
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

# Useful Aliases

alias l="exa -l"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias alz="alias | fzf"



########################
# Terminalizer Aliases #
########################

alias trex='terminalizer record'
alias tconfig='terminalizer config'
alias tren='terminalizer render'
alias tplay='terminalizer play'
alias tgen='terminalizer generate'
alias tshare='terminalizer share'


fpath=(/usr/local/share/zsh-completions $fpath)

########################
# Useful Functions     #
########################

# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
      if [[ -z $(git_prompt_info) ]]; then
          echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
      else
          echo "$(git_prompt_info)"
      fi
  fi
}


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

# Function taken from Jeff Geerling https://github.com/geerlingguy/dotfiles
# that syncs and pushes your branches
function gsync() {
 if [[ ! "$1" ]] ; then
     echo "You must supply a branch."
     return 0
 fi

 BRANCHES=$(git branch --list $1)
 if [ ! "$BRANCHES" ] ; then
    echo "Branch $1 does not exist."
    return 0
 fi

 git checkout "$1" && \
 git pull upstream "$1" && \
 git push origin "$1"
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

function tbwebp() {
  for file in tiffany.blog-photos/*; 
    do cwebp -q 50 "$file" -o "${file%.*}.webp"; 
  done
}

function trwbwebp() {
  for file in TWBlog-photos/*; 
    do cwebp -q 50 "$file" -o "${file%.*}.webp"; 
  done
}

function f2fwebp() {
  for file in dfl-photos/*; 
    do cwebp -q 50 "$file" -o "${file%.*}.webp"; 
  done
}

function webpall() {
  for file in *; 
    do cwebp -q 50 "$file" -o "${file%.*}.webp"; 
  done
}

function removedates() {
  for file in *.md
    do mv "${file%%[0-9]*.md} /dates-removed/${file%*.md}"
  done
}
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source /Users/tiffanywhite/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

BROWSER=ARC; export BROWSER
EDITOR=Code; export EDITOR

eval "$(hub alias -s)"
export GITHUB_TOKEN=$token


. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

##############
# Yarn Paths #
##############

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/opt/yarn-[1.22.4]/bin"
export PATH="$PATH:`yarn global bin`"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

########################
# Ruby/Jekyll Fix      #
########################

export PATH="/usr/local/opt/openssl/bin:$PATH"

########################################
# Flags for Ruby Homebrew macOS errors #
########################################


export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"




# Fix npm install errors
export PATH="~/.npm-global/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###########################
# Python Environment Path #
###########################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(zoxide init zsh)"
# pnpm
export PNPM_HOME="/Users/tiffanywhite/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end


##########################
# Homebrew directory fix #
##########################



if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

(( ! ${+functions[p10k]} )) || p10k finalize