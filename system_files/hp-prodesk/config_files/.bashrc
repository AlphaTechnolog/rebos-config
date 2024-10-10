# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias neofetch='fastfetch'
alias ls="eza --icons"
alias la="ls -la"
alias cat="bat --paging=never --style=plain --theme=base16"
alias grep="grep --color=always"
alias cd="z"

export PATH="$PATH:$HOME/.cargo/bin"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/flatpak/exports/share"

eval "$(starship init bash)"
eval "$(zoxide init bash)"