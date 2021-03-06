#source ~/Private/18240/setup_vcs
#source ~/Private/18240/setup_quartus

#if [[ -n $PS1 ]]; then # interactive shell
#  source ~/Private/18340/setenv340.bash
#  source ~/Private/18340/setenv340_vcs.bash
#fi

source ~/Private/18341/setup/setup_bash
source ~/Private/18341/setup/setup_quartus

alias as240='perl ~/Private/18240/as240'
alias sim240='perl ~/Private/18240/sim240'

alias j='jobs -l'
alias h='history'
alias ls='ls --color'
alias l='ls -la --color'
alias p3='cd ~/Private/18341/projects/p3/usb'

# ignoredups:ignorespace
HISTCONTROL=ignoreboth:erasedups

mkdircd (){
	mkdir -p "$*"
	cd "$*"
}

export TERM=xterm-256color

function pcmd {

  exit="$?"
  (( $UID == 0 )) && USER_COLOR='\[\e[1;32m\]' || USER_COLOR='\[\e[1;36m\]' # green/cyan
  [[ $SSH_TTY ]] && HOST_COLOR='\[\e[1;36m\]' || HOST_COLOR='\[\e[1;33m\]' # cyan/yellow
  JOB_COLOR='\[\e[1;37m\]'
  DATE_COLOR='\[\e[1;35m\]'

  if [ "$exit" -eq 0 ] || [ "$exit" -eq 148 ]
  then
    PS1="[\[\e[44m\]${DATE_COLOR}\d ${JOB_COLOR}\[\e[45m\]\j\[\e[44m\]${DATE_COLOR} \t\[\e[0m\]\[\e[40m\]] \n[\[\e[1;34m\]\w \[\e[1;32m\]:)\[\e[0m\]] \n[${USER_COLOR}\u\[\e[0m\]@${HOST_COLOR}\h\[\e[0m\]: \[\e[1;32m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\e[1;36m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[0m\]]\$ "
  else
    PS1="[\[\e[44m\]${DATE_COLOR}\d ${JOB_COLOR}\[\e[45m\]\j\[\e[44m\]${DATE_COLOR} \t\[\e[0m\]\[\e[40m\]] \n[\[\e[1;34m\]\w \[\e[1;31m\]:(\[\e[0m\]] \n[${USER_COLOR}\u\[\e[0m\]@${HOST_COLOR}\h\[\e[0m\]: \[\e[1;32m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\e[1;36m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[0m\]]\$ "
  fi

      unset USER_COLOR
      unset USER_COLOR
      unset HOST_COLOR
      unset JOB_COLOR
      unset DATE_COLOR
}

PROMPT_COMMAND=pcmd
