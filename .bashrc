if [ $PWD = $HOME ]; then
	cd ~/Documents/
fi

# Starts tmux if a session is not already running
if [ -z $TMUX ]; then
	tmux
fi

alias c=clear
alias q=exit

PATH="$PATH:/snap/bin"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:/home/marcospotato/.local/share/bob/nvim-bin"
PATH="$PATH:/home/marcospotato/go/bin"
PATH="$PATH:/home/marcospotato/.bun/bin"
PATH="$PATH:/home/marcospotato/.local/kitty.app/bin"

alias bashrc="nvim ~/.bashrc"
alias chadrc="pushd . && cd ~/.config/nvim/lua/custom/ && nvim"
alias tmuxconf="nvim ~/.config/tmux/tmux.conf"
alias kittyconf="vim ~/.config/kitty/kitty.conf"

alias vim=nvim
alias sqlite=sqlite3

alias cf="cd \$(find . -type d -print | fzf)"
alias cdc="cd ~/.config"
alias cdd="cd ~/Documents"
alias notes="pushd . && cd ~/Documents/Notes/ && nvim"

# Start a new default HTMX + Go with Fiber project
alias htmxinit="bash ~/Documents/Defaults/htmx/init.sh"
alias pygameinit="bash ~/Documents/Defaults/pygame/init.sh"

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

green="\[\033[01;32m\]"
red="\[\033[01;31m\]"
blue="\[\033[01;34m\]"
reset="\[\033[00m\]"

alias exa="exa --icons"
alias exaa="exa --icons --all"
alias exat="exa --icons --tree"

if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

. "$HOME/.cargo/env"
eval "$(starship init bash)"
eval $(opam env --switch=default)
