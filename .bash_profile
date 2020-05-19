# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color 

export PATH=$PATH:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# export PATH
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH=$PATH:/Applications/Racket\ v7.1/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home'
export JAVA_FX_HOME='/Users/josephhu/Library/javafx-sdk-11.0.2'
export PATH=$PATH:$JAVA_HOME/bin

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Remove after finished CS246
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
alias mern="cd ~/Desktop/mern_shopping_list"
alias linux="ssh j268hu@linux.student.cs.uwaterloo.ca"
alias school="cd /Users/josephhu/Documents/Joseph/university/1201\ -\ 2020\ Winter" 
alias crack="cd /Users/josephhu/Documents/Joseph/coding/learning/ctci"
alias joseph="cd /Users/josephhu/Documents/Joseph/"
