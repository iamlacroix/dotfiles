# Instructions
-----
Clone repo into `$HOME/dotfiles`. Add the following lines of code to the top of your `$HOME/.bash_profile`:

```
# Bash
if [ -f $HOME/dotfiles/bash_profile ]; then
  . $HOME/dotfiles/bash_profile
fi

# Prompt
if [ -f $HOME/dotfiles/bash_prompt ]; then
  . $HOME/dotfiles/bash_prompt
fi
```