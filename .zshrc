# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export GOPATH=$HOME/go
export PATH="/usr/local/share/dotnet/x64:/Users/josephhu/.cargo/bin:/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# CS451_DEPENDENCIES="/Users/josephhu/Documents/university/1229-2022-fall/CS451/dependencies"
# CS451_MAVEN="$CS451_DEPENDENCIES/apache-maven-3.3.9/bin"
# CS451_HADOOP="$CS451_DEPENDENCIES/hadoop-3.1.4/bin"
# CS451_SCALA="$CS451_DEPENDENCIES/scala-2.11.8/bin"
# CS451_SPARK="$CS451_DEPENDENCIES/spark-2.3.1-bin-hadoop2.7/bin"

# export PATH="$CS451_MAVEN:$CS451_HADOOP:$CS451_SCALA:$CS451_SPARK:$PATH"
# export PATH="/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home/bin:$PATH"
# export PATH="/Users/josephhu/.local/share/nvim/mason/bin:$PATH"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-19.jdk/Contents/Home/"
# export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native"

# ================   Aliases   ==================
alias linux="ssh j268hu@linux.student.cs.uwaterloo.ca"
alias linux2="ssh j268hu@ubuntu2004-002.student.cs.uwaterloo.ca"
alias linux4="ssh j268hu@ubuntu2004-004.student.cs.uwaterloo.ca"
alias linux8="ssh j268hu@ubuntu2004-008.student.cs.uwaterloo.ca"
alias linux10="ssh j268hu@ubuntu2004-010.student.cs.uwaterloo.ca"
alias datasci="ssh -D 1080 j268hu@datasci.cs.uwaterloo.ca"
alias school="cd /Users/josephhu/Documents/university/1229-2022-fall" 
alias crack="cd ~/code/learning/ctci-solutions"
alias lc="cd ~/code/leetcode"
alias qmk="cd ~/Documents/QMK"
alias dotfiles="cd ~/code/dotfiles"
alias cs451="cd /Users/josephhu/Documents/university/1229-2022-fall/CS451"
alias bigdata="cd /Users/josephhu/Documents/university/1229-2022-fall/CS451/dependencies/bin; ./setup.sh; cd ../.."
alias cs454="cd /Users/josephhu/Documents/university/1229-2022-fall/CS454"
alias data="cd /Users/josephhu/.local/share/nvim"

alias cleanSessions="rm Session.vim.*"
alias zrc="nvim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias nrc="cd ~/.config/nvim && nvim && cd -"
alias yrc="nvim ~/.config/yabai/yabairc"
alias src="nvim ~/.config/skhd/skhdrc"
alias rc="cd ~/.config; nvim -S"

alias mvn8="JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/ && mvn"
alias bloopMvnBuild="mvn8 ch.epfl.scala:maven-bloop_2.13:1.5.4:bloopInstall"

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
