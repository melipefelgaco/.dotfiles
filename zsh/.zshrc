ulimit -n 4096


# --- Oh My Zsh Setup ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# --- Node Version Manager (NVM) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --- History Settings ---
# Format: "%F" = date (YYYY-MM-DD), "%T" = time (HH:MM:SS)
HIST_STAMPS="%F %T"

# --- Custom Aliases ---
alias code='open -a Visual\ Studio\ Code'
alias reload="source ~/.zshrc"
alias show-devlog="tail -f ./log/development.log"
alias g='git'
alias br='bin/rspec'
alias crawl='open /Applications/DCSS.app'

# --- Custom Functions ---
open-pushed-branch-files() {
  files=$(git diff --name-only master...HEAD)
  if [ -n "$files" ]; then
    echo "$files" | tr '\n' '\0' | xargs -0 open -a "Visual Studio Code"
  else
    echo "No changed files to open."
  fi
}
alias opf='open-pushed-branch-files'
