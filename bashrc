# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# vi
alias gv="gvim"
alias gvvi="gvim ~/.vimrc"
alias gvba="gvim ~/.bashrc"

# git
alias gits="git status -s"
alias gita="git add "
alias gitm="git commit -m "
alias gitam="git commit -a -m "
alias gitp="git push"
alias gitl="git log --pretty=format:'%h, %s' -10"
alias gitc="git checkout "
alias gitb="git branch "
alias gitv="git branch -av"
alias gitf="git remote update origin --prune"

# grep
export GREP_OPTIONS="--exclude-dir=\.git --exclude-dir=jquery --exclude=tags"

# ctags
alias tagj="ctags --langmap=php:.inc --languages=php --exclude=.git -R"

# source
alias baj="source ~/.bashrc"

# cd
alias cdh="cd /var/www/html"


