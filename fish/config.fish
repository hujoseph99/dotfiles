if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx TERM xterm-256color

set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# environment variables
set -gx DATABRICKS_DEV_PROXY_USE_HTTP2 false
set BUN_INSTALL "$HOME/.bun"
set UNIVERSE_PATH "~/universe"
set UNIVERSE_PATH2 "~/universe2"
set UNIVERSE_PATH3 "~/universe3"
set UNIVERSE_PATH4 "~/universe4"
set PATH /opt/homebrew/bin "$BUN_INSTALL/bin" $PATH

set TMUX_CONF "$HOME/.config/tmux/tmux.conf"
alias tmux="tmux -f $TMUX_CONF"

alias src="source ~/.config/fish/config.fish"

alias o="cd $HOME/universe && openui"
alias i="CLAUDE_CODE_NO_FLICKER=1 isaac --enable-auto-mode"

for i in (seq 1 9)
    alias wt$i="cd $HOME/.worktrees/universe/wt$i"
end

for i in (seq 0 9)
    alias tm$i="tmux attach -d -t $i"
end

# aliases
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias ts="yarn tsx --import ./setup-node.ts testSingle.ts"
alias td="tsx debug-antlr.ts"
alias tm="tsx missingContextsCounts.ts"
alias t="tsx test.ts"
alias yt="cd ..;yarn test *.test.ts;cd -"
alias ytf="cd ..;yarn test formatCompoundStatement.test.ts;cd -"

alias sshfix="source ~/fish-scripts/tmux-ssh.fish"

alias investigation="cd $UNIVERSE_PATH/js/packages/editor/src/parse/format/investigation"
alias format="cd $UNIVERSE_PATH/js/packages/editor/src/parse/format"

alias s="yarn start --services monolith"
#alias sm="yarn start --services monolith --projects \"notebook,dbsql,lakeview,recents,settings,workspace,lakebuilder,pipelines\""
alias sm="DATABRICKS_RSBUILD_LAZY_COMPILATION=false yarn start --fast"
alias smp="yarn start:profiling --services monolith --projects \"notebook,recents,lakebuilder\""
alias smlogfood="yarn start --services monolith,dbsql --proxy=https://adb-2548836972759138.18.azuredatabricks.net"
alias yw="yarn watch"
alias yfa="yarn fix-all"
alias ytc="yarn type-check"
alias yb="yarn build"
alias gpm="git checkout master; git pull; git checkout -"
alias gpo="git pp origin"
alias gcm="git checkout master"
alias gscm="git stash; git checkout master"
alias genrampup="./feature-flag/tools/ia-rampup-plan-generator.sh"

alias u="cd $UNIVERSE_PATH"
alias ysls="cd $UNIVERSE_PATH/webapp/web; STORYBOOK_GLOB=js/lakebuilder/stories/Lakebuilder.stories.tsx yarn start:storybook"
alias yspw="cd $UNIVERSE_PATH/webapp/web; PW_PERF_DEBUG_MODE=true BASE_URL=http://localhost:6006 yarn playwright:test --ui"
alias yspwd="cd $UNIVERSE_PATH/webapp/web; BASE_URL=http://localhost:6006 yarn playwright:test --ui"
alias e="cd $UNIVERSE_PATH/js/packages/editor/"
alias ws="cd $UNIVERSE_PATH/js/packages/web-shared"
alias redash="cd $UNIVERSE_PATH/redash/managed_redash/packages/app"
alias notebook="cd $UNIVERSE_PATH/webapp/web/js/notebook"
alias p="cd $UNIVERSE_PATH/js/packages"
alias wa="cd $UNIVERSE_PATH/webapp/web"
alias ff="cd $UNIVERSE_PATH/feature-flag/"
alias accountsui="cd $UNIVERSE_PATH/accounts-ui/web"

alias u2="cd $UNIVERSE_PATH2"
alias ysls2="cd $UNIVERSE_PATH2/webapp/web; STORYBOOK_GLOB=js/lakebuilder/stories/Lakebuilder.stories.tsx yarn start:storybook -p 6206"
alias yspw2="cd $UNIVERSE_PATH2/webapp/web; PW_PERF_DEBUG_MODE=true BASE_URL=http://localhost:6206 yarn playwright:test --ui"
alias yspwd2="cd $UNIVERSE_PATH2/webapp/web; BASE_URL=http://localhost:6206 yarn playwright:test --ui"
alias e2="cd $UNIVERSE_PATH2/js/packages/editor/"
alias ws2="cd $UNIVERSE_PATH2/js/packages/web-shared"
alias redash2="cd $UNIVERSE_PATH2/redash/managed_redash/packages/app"
alias notebook2="cd $UNIVERSE_PATH2/webapp/web/js/notebook"
alias p2="cd $UNIVERSE_PATH2/js/packages"
alias wa2="cd $UNIVERSE_PATH2/webapp/web"
alias ff2="cd $UNIVERSE_PATH2/feature-flag/"
alias accountsui2="cd $UNIVERSE_PATH2/accounts-ui/web"

alias u3="cd $UNIVERSE_PATH3"
alias ysls3="cd $UNIVERSE_PATH3/webapp/web; STORYBOOK_GLOB=js/lakebuilder/stories/Lakebuilder.stories.tsx yarn start:storybook -p 6306"
alias yspw3="cd $UNIVERSE_PATH3/webapp/web; PW_PERF_DEBUG_MODE=true BASE_URL=http://localhost:6306 yarn playwright:test --ui"
alias yspwd3="cd $UNIVERSE_PATH3/webapp/web; BASE_URL=http://localhost:6306 yarn playwright:test --ui"
alias e3="cd $UNIVERSE_PATH3/js/packages/editor/"
alias ws3="cd $UNIVERSE_PATH3/js/packages/web-shared"
alias redash3="cd $UNIVERSE_PATH3/redash/managed_redash/packages/app"
alias notebook3="cd $UNIVERSE_PATH3/webapp/web/js/notebook"
alias p3="cd $UNIVERSE_PATH3/js/packages"
alias wa3="cd $UNIVERSE_PATH3/webapp/web"
alias ff3="cd $UNIVERSE_PATH3/feature-flag/"
alias accountsui3="cd $UNIVERSE_PATH3/accounts-ui/web"

alias u4="cd $UNIVERSE_PATH4"
alias ysls4="cd $UNIVERSE_PATH4/webapp/web; STORYBOOK_GLOB=js/lakebuilder/stories/Lakebuilder.stories.tsx yarn start:storybook -p 6406"
alias yspw4="cd $UNIVERSE_PATH4/webapp/web; PW_PERF_DEBUG_MODE=true BASE_URL=http://localhost:6406 yarn playwright:test --ui"
alias yspwd4="cd $UNIVERSE_PATH4/webapp/web; BASE_URL=http://localhost:6406 yarn playwright:test --ui"
alias e4="cd $UNIVERSE_PATH4/js/packages/editor/"
alias ws4="cd $UNIVERSE_PATH4/js/packages/web-shared"
alias redash4="cd $UNIVERSE_PATH4/redash/managed_redash/packages/app"
alias notebook4="cd $UNIVERSE_PATH4/webapp/web/js/notebook"
alias p4="cd $UNIVERSE_PATH4/js/packages"
alias wa4="cd $UNIVERSE_PATH4/webapp/web"
alias ff4="cd $UNIVERSE_PATH4/feature-flag/"
alias accountsui4="cd $UNIVERSE_PATH4/accounts-ui/web"

pyenv init - fish | source
starship init fish | source
