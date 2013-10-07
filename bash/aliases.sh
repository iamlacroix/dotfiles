# reload shell config
alias reload='source $HOME/.bash_profile 1>/dev/null'

# Search bash history & highlight search term
alias hist='history | grep --color=auto'

# Always use color for grep
alias grep='grep --color=auto'

# Better navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# listing files
# alias l="l -lF ${colorflag}"
# alias ll="ls -lF ${colorflag}"
# alias ls="command ls -aF ${colorflag}"
#
# alias l="ls -F ${colorflag}"
# alias ls="ls -F ${colorflag}"
#
alias ls='ls ${colorflag}'
alias lsa='ls -lahF'
alias l='ls -lahF'
alias ll='ls -lF'
alias la='ls -lAF'
# Show only hidden files
alias l.='ls -d .* --color=auto'
