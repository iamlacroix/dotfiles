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


# Ruby version
#
STR="$(ruby -v 2> /dev/null)"
if [[ $STR != "" ]]; then
  IFS=' ' read -ra ARR <<< "$STR"
  RB_ENGINE=${ARR[0]}
  RB_VERSION=${ARR[1]}
  if [[ $RB_ENGINE == "rubinius" ]]; then
    RB_ENGINE="rbx"
  fi
  RUBY_VER="${RB_ENGINE}/${RB_VERSION}"
else
  RUBY_VER=""
fi
unset STR

if [[ $RUBY_VER != '' ]]; then
  RUBY_STR=" ${BLACK}★ ${RED}${RUBY_VER}${RESET}"
else
  RUBY_STR=""
fi


# Node.js version
#
NODE_VER="$(node -v 2> /dev/null)"
NODE_VER=${NODE_VER/"v"/""}

if [[ $NODE_VER != '' ]]; then
  NODE_STR=" ${BLACK}☆ ${YELLOW}node/${NODE_VER}"
else
  NODE_STR=""
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



# Prompt Layout
#
# [time] › [date] › [temperature]  [user]@[host] ★ [ruby/version] ☆ [node/version]
# [git icon (check or delta)] [git branch] • [current path]
# ¥
#
export PS1="
${ON_BLACK}${YELLOW}\D{%l:%M:%S %p} ${BLUE}› ${WHITE}\D{%a, %b %_d} ${RESET} ${BLUE}\u@\h${RUBY_STR}${NODE_STR}
$([[ -n $(git branch 2> /dev/null) ]] && echo ${GIT_STATUS} $(parse_git_branch) ${YELLOW}• ${RESET})${CYAN}\w
${RED}¥ ${RESET}"

} # END function `prompt`



# Init the prompt
#
export PROMPT_COMMAND="prompt"
