# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
# export ZSH_CUSTOM=$ZSH/custom
# if [ ! -e $ZSH ]; then
#   git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH
# fi

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd-mm-yyyy"
# Plugins
ZSH_PLUGINS_HOME=$ZSH/custom/plugins
# Path to your oh-my-zsh installation.
export ZSH="/Users/fmagesty/.oh-my-zsh"
# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="robbyrussell"

# download autosuggestions
ZSH_AUTOSUGGESTIONS=$ZSH_PLUGINS_HOME/zsh-autosuggestions
if [ ! -e $ZSH_AUTOSUGGESTIONS ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTOSUGGESTIONS
fi
# # download spaceship-prompt theme
# OMZ_THEME=$ZSH_CUSTOM/themes/spaceship-prompt
# dest="$ZSH/themes/spaceship-prompt.zsh-theme"
# if [ ! -e $dest ]; then
#   git clone https://github.com/denysdovhan/spaceship-prompt.git $OMZ_THEME
#   ln -s "$OMZ_THEME/spaceship.zsh-theme" $dest
# fi

#Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  python
  zsh-autosuggestions
)
####################################################
# All Aliases
####################################################
# VSCode Aliases
alias code='open -a Visual\ Studio\ Code'
# Language Aliases
alias python='python3'
# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Docker Aliases
    alias dk="docker"
    alias dc="docker-compose"
    alias dm="docker-machine"
    alias ds="docker stack"
    alias dsd="docker stack deploy"
    alias dsd="docker stack remove"
    alias dkps="docker container ps"
    alias ctop="docker rm ctop; docker run --rm -ti \
        --name=ctop \
        -v /var/run/docker.sock:/var/run/docker.sock \
        quay.io/vektorlab/ctop:latest"
####################################################
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
#export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
#export PATH="$HOME/.rbenv/bin:$PATH"


# The command bellow may or may not be needed. uncomment if getting errors with ruby or with bundler:
#eval "$(rbenv init -)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"