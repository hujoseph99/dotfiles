if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

starship init fish | source
