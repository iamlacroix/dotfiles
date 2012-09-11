# Import Powerline-style prompt via Python script
# 
if [ -f $HOME/dotfiles/lib/powerline-bash.py ]; then
  function _update_ps1()
  {
    export PS1="$($HOME/dotfiles/lib/powerline-bash.py $?)"
  }
  export PROMPT_COMMAND="_update_ps1"
fi
