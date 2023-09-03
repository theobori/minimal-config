if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias la="exa -lahg"
alias tmux="tmux -2"
alias tf="terraform"
alias k="kubectl"

export PATH="$PATH:/$HOME/.local/bin"
export GPG_TTY=$(tty)

set -g theme_color_scheme dracula
