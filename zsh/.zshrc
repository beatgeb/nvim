PATH="/usr/local/bin:$PATH"
PATH="/opt/homebrew/bin:$PATH"
# alias brew='sudo -Hu sharedapps brew'
# [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
# ssh-add ~/.ssh/san_gitlab_ed25519
#autoload -U compinit && compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# source ~/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
# Add paths
export PATH=/opt/homebrew/bin:$PATH
export PATH=~/.config/scripts:$PATH
# Add aliases
alias vi="nvim"
alias vim="nvim"
# Keybinds
bindkey -s ^f "tmux-sessionizer\n"
source ~/.config/zsh/repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.config/zsh/repos/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Fix autocomplete
bindkey -M menuselect '^M' .accept-line
