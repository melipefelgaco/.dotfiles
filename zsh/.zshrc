########## Fig pre block. Keep at the top of this file ##########
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"

########## Load rbenv automatically ##########
eval "$(rbenv init - zsh)"

########## Homebrew on the M1, where things install to /opt/homebrew ##########
export PATH=/opt/homebrew/bin:$PATH

########## Oh My Zsh Configs ##########
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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


########## Ssh Key Export path ##########
export SSH_KEY_PATH="~/.ssh/rsa_id"

######################## ALIASES ########################
# TODO:
# - Test other TCP aliases
# - ..
#
# List all ports for tcp
# sudo lsof -itcp
# All ports for tcp, dont resolve port name from numbers
# sudo lsof -itcp -P
# Open files and ports of process #$PID
# sudo lsof -p $PID
# Only ports of tcp for process #$PID, dont resolve port name, dont resolve ip name
# sudo lsof -a -p $PID -P -n -itcp
# Only ports of tcp for process #$PID, dont resolve port name, dont resolve ip name, refresh every 5 seconds
# sudo lsof -a -p $PID -P -n -itcp -r 5
# Search by file (can be slow)
# sudo lsof /complete/path/to/file
alias show-all-ports='sudo lsof -itcp'

# VSCode
alias code='open -a Visual\ Studio\ Code'

# Python
# alias python='python3'
# Folder navigation

alias ..="cd .."
alias ...="cd ../.."
alias lsx="ls -a"
alias run-playground="cd ~/Dev/random-code-playground && code ."
# TODO:
# Have to re-clone these projects locally after last OS wipe:
# alias shopping-list-run="cd ~/Dev/shopping-list/ && code ."
# alias monolith-run="cd ~/Dev/monolith/ && code ."
# alias conways-run="cd ~/Dev/conways-game-of-life/ && code ."

# Docker
alias dk="docker"
alias dc="docker-compose"
alias dkcr="docker compose run"
alias dkattfe="docker attach frontend_upskls_development"
alias dkattbe="docker attach backend_upskls_development"
alias dkexefe="docker exec -it frontend_upskls_development"
alias dkexebe="docker exec -it backend_upskls_development"
alias dkcdevup="docker compose --profile dev up"
# alias dkcdown="docker-compose down" // not working (?)
alias dkcres="docker compose restart"
alias dm="docker-machine"
alias ds="docker stack"
alias dsd="docker stack deploy"
alias dsr="docker stack remove"
alias ctop="docker rm ctop; docker run --rm -ti \
    --name=ctop \
    -v /var/run/docker.sock:/var/run/docker.sock \
    quay.io/vektorlab/ctop:latest"
######################## // ALIASES ########################


########## Fig post block. Keep at the bottom of this file ##########
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
