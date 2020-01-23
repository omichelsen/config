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
alias ebash='code ~/.zprofile'
alias sbash='source ~/.zprofile'
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
