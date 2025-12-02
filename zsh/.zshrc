# --- Fig preblock ---
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ulimit -n 4096

# --- Node Version Manager (NVM) ---
  export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Android development
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# --- Oh My Zsh Setup ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --- History Settings ---
# Format: "%F" = date (YYYY-MM-DD), "%T" = time (HH:MM:SS)
HIST_STAMPS="%F %T"

# --- Custom Functions ---
open-pushed-branch-files() {
  files=$(git diff --name-only master...HEAD)
  if [ -n "$files" ]; then
    echo "$files" | tr '\n' '\0' | xargs -0 open -a "Visual Studio Code"
  else
    echo "No changed files to open."
  fi
}

# --- Custom Aliases ---
alias code='open -a Visual\ Studio\ Code'
alias reload="source ~/.zshrc"
alias show-devlog="tail -f ./log/development.log"
alias g='git'
alias opf='open-pushed-branch-files'
alias br='bin/rspec'
alias crawl='open /Applications/DCSS.app'
alias pumaon='launchctl load  ~/Library/LaunchAgents/io.puma.dev.plist'
alias pumaoff='launchctl unload  ~/Library/LaunchAgents/io.puma.dev.plist'

###################################### End of user configuration #####################################
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
