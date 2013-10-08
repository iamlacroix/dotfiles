# ruby
function ruby_version() {
  local rb="$(ruby -v 2> /dev/null)"
  if [[ $rb != "" ]]; then
    local prefix=""
    local engine=$rb[(w)1]
    local version=$rb[(w)2]
    if [[ $engine == "rubinius" ]]; then
      prefix="rbx/"
    fi
    if [[ $engine == "jruby" ]]; then
      prefix="jruby/"
    fi
    # symbol ◆◇❖
    # color 95, 131 or red
    echo " %{$FG[131]%}❖ ${prefix}${version}%{$reset_color%}"
  fi
}

# node.js
function node_version() {
  local version="$(node -v 2> /dev/null)"
  if [[ $version != '' ]]; then
    version=${version/"v"/""}
    # symbol ●○⦿⨀⊙
    # color 143, 144 or yellow
    echo " %{$FG[143]%}⦿ ${version}%{$reset_color%}"
  fi
}

# symbols √✓✔ ∆▵✱
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[245]%} (%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[245]%}) %{$fg[magenta]%}✱"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[245]%}) %{$fg[green]%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭ "

local pwd="%{$fg[magenta]%}%c%{$reset_color%}"
local name="%{$fg[cyan]%}%n%{$reset_color%}"
local time="%{$FG[244]%}%*%{$reset_color%}"
local divider="%{$fg[black]%}:%{$reset_color%}"
local prefix="[${pwd}${divider}${name}${divider}${time}]"
# local git_prompt='$(git_prompt_status)$(git_prompt_info)'

# local line1=$'\n%{$FG[243]%}╭─%{$reset_color%}${prefix}'
# local line2=$'\n%{$FG[243]%}╰─%{$fg[red]%}¥%{$reset_color%} '
local line1=$'\n%{$FG[248]%}╭─%{$reset_color%}${prefix}——%{$FG[209]%}⦿%{$reset_color%}'
local line2=$'\n%{$FG[248]%}╰─%{$FG[209]%}⦿%{$reset_color%} '

PROMPT="${line1}${line2}"
RPROMPT='$(ruby_version)$(node_version)$(git_prompt_info)'
