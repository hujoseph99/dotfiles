# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export GOPATH=$HOME/go
export CLASSPATH=".:/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PERCY_TOKEN=caba8975b49dc738e132acc576927b27b102b340f1037c020c8f11cab9b3d982

alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

alias code="cd ~/code"
alias dotfiles="cd ~/code/dotfiles"
alias universe="cd ~/code/universe"
alias h2ru="cd ~/code/universe/js/packages/editor; source /Users/joseph.hu/code/universe/js/env.sh init"
alias viz="cd ~/code/universe/js/packages/visualization"
alias h2ru1="yarn build"
alias h2ru2="yarn dev-webpack-npm"
alias h2ru3="yarn dev-webpack-workers"
alias h2ru4="yarn storybook"
alias h2r="cd /Users/joseph.hu/code/hue2redash"
alias webapp="cd ~/code/universe/redash/managed_redash/packages/app"
alias cleanSessions="rm Session.vim.*";
alias mpoce="cd ~/code/vscode-extension-samples/lsp-embedded-language-service"
alias mpocs="cd ~/code/vscode-extension-samples/lsp-sample"

function fetchBranch { 
  git fetch git@github.com:${1}/universe.git ${2}:${2} 
}

# ================   Aliases   ==================
alias zrc="nvim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias nrc="nvim ~/.config/nvim/init.vim"

DISABLE_MAGIC_FUNCTIONS=true

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
