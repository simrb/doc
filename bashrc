# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# common
alias gv="gvim"
alias gitst="git st -s"
alias gitam="git commit -am "
alias gitm="git commit -m "
alias gitp="git push"
alias gitl="git log --pretty=format:'%h, %s' -10"

# cd /var/www
alias cdh="cd /var/www/html"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting






