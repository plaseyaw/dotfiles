
# ~/.config/zsh/conf.d/99-keybindings.zsh
# Fix Kitty arrow keys - must load after all plugins

bindkey "^[OC" forward-char
bindkey "^[OD" backward-char
bindkey "^[OA" up-line-or-history
bindkey "^[OB" down-line-or-history
