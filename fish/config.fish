if status is-interactive
    # Commands to run in interactive sessions can go here
end

# environment variables
set PATH /usr/local/bin /opt/homebrew/bin $PATH
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# aliases
function gs
    command git status
end

set TERM xterm-256color

alias af="fish ~/code/scripts/af.fish"
alias gifify="python3 ~/code/scripts/gifify.py"

starship init fish | source
