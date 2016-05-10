# ZSH_THEME="agnoster"
# https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme
ZSH_THEME="powerline"

# powerline
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
POWERLINE_SHOW_GIT_ON_RIGHT="true"

plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

# xterm hack for some terminals to support 256 colors
if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi
