if status is-interactive
    # Commands to run in interactive sessions can go here
end

# environment variables
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# aliases
function gs
    command git status
end

starship init fish | source
