if test -e ~/.asdf/asdf.fish
  source ~/.asdf/asdf.fish
end

# Use neovim
function vim
  nvim $argv
end

# Reload fish
function reload
  source ~/.config/fish/config.fish
end
