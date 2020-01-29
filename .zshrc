# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VOLTA_HOME="$HOME/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

# less syntax highlight
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

# php
if [[ "$OSTYPE" == "darwin"* ]]; then
	export PATH="$(brew --prefix)/bin:$PATH"
fi

# Terminal
# ------------------------------------------------------------------------------
alias la='ls -A'
alias ll='ls -l'
alias cwd='pwd'
alias ebash='code ~/.zshrc'
alias sbash='source ~/.zshrc'
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias npmo='npm outdated --depth=0'
alias npml='npm list --depth=0'
alias npmi='npm install'
alias npmu='npm update'
alias npmio='npm install && npm outdated'
alias npmv='node -v && npm -v'
alias cbuild='rm -rf public && npm run build && ll public'
alias pyths='python -m SimpleHTTPServer 8080'

count_files_in_dir() {
	if [ ! -z "$@" ]; then
		find $@ -type f | wc -l
	fi
}
alias cf='count_files_in_dir'

alias linecount='git ls-files | xargs wc -l'

# Folders
# ------------------------------------------------------------------------------
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias calv='cd ~/projects/calvinhobbes'
alias cart='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Projects/Cartoons'
alias conf='cd ~/config'
alias database='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Projects/database'
alias dilb='cd ~/projects/dilbert'
alias kuranz='cd ~/projects/kuranz'
alias nodl='cd ~/projects/nodl'
alias ole='cd ~/projects/ole.michelsen.dk'
alias proj='cd ~/projects'
alias regex='cd ~/projects/regex-crossword'
alias rega='cd ~/projects/regex-crossword-api'
alias regl='cd ~/projects/regex-lib'
alias regm='cd ~/projects/regex-mobile'
alias regs='cd ~/projects/regex-solver'

# Git
# ------------------------------------------------------------------------------
alias ga='git add'
alias gll='git l'
alias gs='git s'
alias gst='git status'
alias gci='git commit'
alias gco='git checkout'
alias gamend='git commit --amend --no-edit'
alias gamenda='git commit -a --amend --no-edit'
alias gd='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias pull='git pull'
alias push='git push'
alias spull='git stash && git pull && git stash pop'
alias spush='git stash && git push && git stash pop'
