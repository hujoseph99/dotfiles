# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/code/typescript-5.5.4/bin:Users/joseph.hu/Library/Python/3.9/bin:$PATH
export PATH=/Users/joseph.hu/Library/Python/3.9/bin:$PATH
source ~/.zsh_env_vars

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export GOPATH=$HOME/go
export PATH="/usr/local/share/dotnet/x64:/Users/josephhu/.cargo/bin:/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# change file limit size
ulimit -n 10240

alias ts="npx tsx testSingle.ts"
alias tm="npx tsx missingContextsCounts.ts"
alias t="npx tsx test.ts"
alias yt="cd ..;yarn test *.test.ts;cd -"
alias ytf="cd ..;yarn test formatCompoundStatement.test.ts;cd -"

# =============   Work Aliases   ================
alias u="cd ~/code/universe"
alias s="yarn start --services monolith"
alias sm="yarn start --services monolith --projects \"notebook,dbsql,lakeview,recents\""
alias smlogfood="yarn start --services monolith,dbsql --proxy=https://adb-2548836972759138.18.azuredatabricks.net"
alias yw="yarn watch"
alias yfa="yarn fix-all"
alias ytc="yarn type-check"
alias yb="yarn build"
alias editor="cd ~/code/universe/js/packages/editor/src/"
alias ws="cd ~/code/universe/js/packages/web-shared"
alias redash="cd ~/code/universe/redash/managed_redash/packages/app"
alias notebook="cd ~/code/universe/webapp/web/js/notebook"
alias p="cd ~/code/universe/js/packages"
alias wa="cd ~/code/universe/webapp/web"
alias ff="cd ~/code/universe/feature-flag/"
alias accountsui="cd ~/code/universe/accounts-ui/web"
alias oai="cat ~/code/openai-key | pbcopy"
alias gpm="git checkout master; git pull; git checkout -"
alias gpo="git pp origin"
alias gcm="git checkout master"
alias gscm="git stash; git checkout master"
alias genrampup="./feature-flag/tools/ia-rampup-plan-generator.sh"
alias sessions="cd ~/.local/share/nvim/sessions"

notify () {
  if [ $? -eq 0 ]; then
    terminal-notifier -title Terminal -message 'Your process has successfully finished.' -sound 'glass'
  else
    terminal-notifier -title Terminal -message 'Oh no, your process FAILED.' -sound 'sosumi'
  fi
}

# # =============   Register Git SSH keys ================
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/github_emu

# =============   Git Aliases   ================
alias gs="git status"

gd () {
    git diff "$@"
}

gds () {
    git diff --staged "$@"
}

co () {
    if [ $# -lt 2 ]
    then
        echo "Usage: $funcstack[1] <userid> <branch>"
        return
    fi

    git fetch https://github.com/${1}/universe "${2}:${2}"
}

# ================   Aliases   ==================
alias dotfiles="cd ~/code/dotfiles"
alias raycast="cd ~/code/raycast"
alias config="cd ~/.config/"
alias share="cd ~/.local/share"

alias cleanSessions="rm Session.vim.*"
alias zrc="nvim ~/.zshrc; source ~/.zshrc"
alias szrc="source ~/.zshrc"
alias nrc="cd ~/.config/nvim && nvim && cd -"
alias yrc="nvim ~/.config/yabai/yabairc"
alias src="nvim ~/.config/skhd/skhdrc"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
