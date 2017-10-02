# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# common
alias gv="gvim"
alias gits="git status -s"
alias gita="git add "
alias gitm="git commit -m "
alias gitp="git push"
alias gitl="git log --pretty=format:'%h, %s' -10"

# cd shortcut
alias cdh="cd /var/www/html"

# grep command
export GREP_OPTIONS="--exclude-dir=\.git --exclude=tags"

# ctags command
alias ctagsj="ctags --langmap=php:.inc --languages=php -R"

