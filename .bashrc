# ~/.bashrc: executed by bash(1) for non-login shells.
#Mr Sandman's PopOS .bashrc - haha bash go brrrrr :)
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias opcionales
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Mis propios alias - My own aliases:

alias alib='alias | more -n 6'
alias bt='bashtop'
alias bonk='exit'
alias boop='sudo systemctl restart'
alias bup="source ~/.bashrc && echo 'El .bashrc se actualizó con éxito'"
alias cat!='sudo cat'
alias cls='clear;ls -lh'
alias did="history | grep"
alias empty-can='trash-empty'
alias flip='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove && sudo apt autoclean'
alias gensecpass="head -c 32 /dev/random | base64 | sed "s:[+=/]::g" | head -c 32"
alias infuse='chmod +x'
alias lebron-james='trash-put'
alias list-can='trash-list'
alias lol='toilet --gay lol'
alias mygit-clone='cd /home/mrsandman/git-clone-zone && git clone https://github.com/mrs4ndman/base.git && git clone https://github.com/mrs4ndman/setup.git'
alias myip='curl ipinfo.io/ip'
alias meminfo='free -html'

alias missile='sudo find / -name 2>/dev/null' 
#The missile knows where it is at all times. It knows this because it knows where it isn't. By subtracting where it is from where it isn't, or where it isn't from where it is (whichever is greater), it obtains a difference, or deviation. The guidance subsystem uses deviations to generate corrective commands to drive the missile from a position where it is to a position where it isn't, and arriving at a position where it wasn't, it now is. Consequently, the position where it is, is now the position that it wasn't, and it follows that the position that it was, is now the position that it isn't.
#In the event that the position that it is in is not the position that it wasn't, the system has acquired a variation, the variation being the difference between where the missile is, and where it wasn't. If variation is considered to be a significant factor, it too may be corrected by the GEA. However, the missile must also know where it was.
#The missile guidance computer scenario works as follows. Because a variation has modified some of the information the missile has obtained, it is not sure just where it is. However, it is sure where it isn't, within reason, and it knows where it was. It now subtracts where it should be from where it wasn't, or vice-versa, and by differentiating this from the algebraic sum of where it shouldn't be, and where it was, it is able to obtain the deviation and its variation, which is called error.

#Missile copy-pasta: Modern day memes hidden in plain sight

alias need='sudo apt search'
alias temps='psensor'
alias nft='neofetch'
alias nyan='nyancat -n'
alias ports='sudo lsof -l -P -n | grep LISTEN'
alias servlist='sudo service --status-all'
alias speedy='sudo mount -t tmpfs -o size=1024M tmpfs /media/rammy' #RAMDISK temporal que se va con apagado
alias sreload='sudo systemctl reload'
alias sstate='sudo systemctl status'
alias sstop='sudo systemctl stop'
alias svim='sudo vi'
alias sysinfo='sudo fdisk -l; blkid; lshw; lscpu; lspci; cat /proc/version; diskusage; df -hl -x squashfs; temp; nft'
alias tree-size='tree -s -h --du'
alias tree-x='tree -I'
alias ttrunk='tree -a -C'
alias untar='tar xvf'
alias vimbash='vim ~/.bashrc'
alias vm-list='sudo find / -name *.qcow2 2>/dev/null'
alias vrc='vim ~/.vimrc'
alias vls="watch -n 0.1 ls -l"
alias whack='sudo systemctl restart'
alias wut='whatis'


# Autocompletación
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

eval $(thefuck --alias)

if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/share/powerline/bindings/bash/powerline.sh
fi

