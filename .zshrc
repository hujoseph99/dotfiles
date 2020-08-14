# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export GOPATH=$HOME/go

# ================   Aliases   ==================
alias linux="ssh j268hu@linux.student.cs.uwaterloo.ca"
alias school="cd /Users/josephhu/Documents/Joseph/university/1201\ -\ 2020\ Winter" 
alias crack="cd /Users/josephhu/Documents/Joseph/coding/learning/ctci-solutions"
alias joseph="cd /Users/josephhu/Documents/Joseph/"
alias g++14="g++ -std=c++14"
alias crackg++="g++ -std=c++14 -o exec"
alias typing="cd /Users/josephhu/Documents/Joseph/coding/projects/typing"
alias typingbackend="cd /Users/josephhu/go/src/github.com/hujoseph99/typing_backend"
alias learngo="cd /Users/josephhu/Documents/Joseph/coding/learning/go-essential-training"
alias qmk="cd ~/Documents/QMK"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias dotfiles="cd /Users/josephhu/Documents/Joseph/coding/dotfiles"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Reload the plugin to highlight the commands each time Iterm2 starts 

### VISUAL CUSTOMISATION ### 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Elements options of left prompt (remove the @username context)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
# Elements options of right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history command_execution_time time)

# Add a second prompt line for the command
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# Add a space in the first prompt 
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

#directory shorten length
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY=Default

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt 
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

