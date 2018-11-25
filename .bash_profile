[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Programs
# ------------------------------------------------------------------------------
alias subl="open -a /Applications/Sublime\ Text\.app"
alias vsc="open -a /Applications/Visual\ Studio\ Code.app"
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

# less syntax highlight
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '

# nvm
export NVM_DIR="/Users/olem/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# rvm (crowdin-cli)
# source ~/.rvm/scripts/rvm

# php
export PATH="$(brew --prefix)/bin:$PATH"

# Terminal
# ------------------------------------------------------------------------------
export CLICOLOR=1

alias la='ls -A'
alias ll='ls -l'
alias cwd='pwd'
alias ebash='vsc ~/.bash_profile'
alias sbash='source ~/.bash_profile'
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

# Folders
# ------------------------------------------------------------------------------
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias nodl='cd ~/projects/nodl'
alias ole='cd ~/projects/ole.michelsen.dk'
alias regex='cd ~/projects/regex-crossword'
alias regs='cd ~/projects/regex-solver'
alias regm='cd ~/projects/RegexCrosswordMobile'
alias calv='cd ~/Dropbox/Projects/Cartoons/calvinhobbes'
alias dilb='cd ~/Dropbox/Projects/Cartoons/dilbert'
alias proj='cd ~/projects'
alias projp='cd ~/Dropbox/Projects'
alias kuranz='cd ~/projects/kuranz'
alias kuranzp='cd ~/projects/kuranz-pages'
alias database='cd ~/Dropbox/Projects/database'

# Git
# ------------------------------------------------------------------------------
alias ga='git add'
alias gs='git s'
alias gst='git status'
alias gci='git commit'
alias gco='git checkout'
alias gamend='git commit --amend --no-edit'
alias gamenda='git commit -a --amend --no-edit'
alias gl='git l'
alias gd='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias pull='git pull'
alias push='git push'
alias spull='git stash && git pull && git stash pop'
alias spush='git stash && git push && git stash pop'

# auto-completion in git
if [ -f ~/config/.git-completion.bash ]; then
  . ~/config/.git-completion.bash
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] λ " #\u@\h user@host
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/olem/google-cloud-sdk/path.bash.inc' ]; then source '/Users/olem/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/olem/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/olem/google-cloud-sdk/completion.bash.inc'; fi
