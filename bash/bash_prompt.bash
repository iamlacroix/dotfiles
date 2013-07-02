#
# Create Prompt
#
function prompt
{


# Set Colors
#
local RESET="\[\e[00m\]"
local BLACK="\[\e[30m\]"
local RED="\[\e[31m\]"
local GREEN="\[\e[32m\]"
local YELLOW="\[\e[33m\]"
local BLUE="\[\e[34m\]"
local MAGENTA="\[\e[35m\]"
local CYAN="\[\e[36m\]"
local WHITE="\[\e[37m\]"

local ON_BLACK="\[\e[40m\]"
local ON_WHITE="\[\e[47m\]"


# Discover which Ruby via rbenv
#
if [[ $RBENV_VERSION != "" ]]; then
  RBENV="$(rbenv shell 2> /dev/null | tail -n1) (S)"
elif [[ $(rbenv local 2> /dev/null | tail -n1) != "" ]]; then
  RBENV="$(rbenv local 2> /dev/null | tail -n1) (L)"
else
  RBENV="$(rbenv global 2> /dev/null | tail -n1) (G)"
fi


# Discover which Node.js
#
if [[ $(which node 2> /dev/null | tail -n1) != "" ]]; then
  NODE_VER="$(node -v 2> /dev/null | tail -n1)"
fi


# Git branch & status
#
GIT_STATUS="\[\e[32m\]√"

# When git is dirty
#
if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]]
then
  GIT_STATUS="\[\e[35m\]∆"
fi

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1/"
}


# Get weather
#
FORECAST=""
WEATHER_FILE="$HOME/.weather"

if [ -e $WEATHER_FILE ] && [ -f $WEATHER_FILE ] && [ -s $WEATHER_FILE ] && [ -r $WEATHER_FILE ]
then
  TEMP=`cat $WEATHER_FILE`
  FORECAST="${BLUE}› ${WHITE}${TEMP}° "
fi


# Prompt Layout
#
# [time] › [date] › [temperature]  [user]@[host] ⚡ [ruby version] ([rbenv global|local|shell])
# [git icon (check or delta)] [git branch] • [current path]
# ¥
#
export PS1="
${ON_BLACK}${YELLOW}\D{%l:%M:%S %p} ${BLUE}› ${WHITE}\D{%a, %b %_d} ${RESET} ${BLUE}\u@\h ${BLACK}★ ${RED}${RBENV}${RESET} ${BLACK}☆ ${YELLOW}${NODE_VER}
$([[ -n $(git branch 2> /dev/null) ]] && echo ${GIT_STATUS} $(parse_git_branch) ${YELLOW}• ${RESET})${CYAN}\w
${RED}¥ ${RESET}"

} # END function `prompt`



# Init the prompt
#
export PROMPT_COMMAND="prompt"
