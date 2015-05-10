alias j='jobs -l'
alias h='history'
alias ls='ls --color'
alias ll='ls -la --color'
alias sshe3='ssh -Y youziw@ece003.ece.cmu.edu'
alias sshe6='ssh -Y youziw@ece006.ece.cmu.edu'
alias biz='cd ~/Documents/CMU/14-15/Spring/70-430'
alias 422='cd ~/Documents/CMU/14-15/Spring/18-422'

# ignoredups:ignorespace
HISTCONTROL=ignoreboth:erasedups

mkdircd (){
	mkdir -p "$*"
	cd "$*"
}

export TERM=xterm-256color
export PS1="\u@\h:\w\$ "
