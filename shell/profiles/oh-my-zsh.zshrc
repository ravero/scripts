# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git dotnet swiftpm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

DEFAULT_USER=`whoami`

#------------------------------------------------------------------------------
# **Data Path** is the root where I put my data files and folders
#
# By default it's the Home Path itself, but for shared OS installations I've found useful
# to have it in a separate Volume, so I don't need to mess the other instalation path of
# an operating system in the same system.
#
# A simple check is done to see if the alternate data path exists (a path in a separate volume.)
# This allow a single script to resolve both scenarios.
#------------------------------------------------------------------------------
export DATA_PATH=$HOME
export ALT_DATA_PATH="/Volumes/HakanData"
if [[ -d $ALT_DATA_PATH ]]; then
    export DATA_PATH=$ALT_DATA_PATH
fi

# Path Configuration
export DEV_PATH=$DATA_PATH/Developer
export PATH=$DATA_PATH/bin/scripts:$PATH
export PATH=$DATA_PATH/bin/flutter/bin:$PATH
export PATH=$HOME/.dotnet/tools:$PATH
export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=$HOME/Environment/scripts:$PATH

# Android SDK Settings
export ANDROID_HOME=$HOME/Library/Android/SDK
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# grep color settings as suggested by https://superuser.com/questions/416835/how-can-i-grep-with-color-in-mac-os-xs-terminal
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

# iTerm 2 Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

#------------------------------------------------------------------------------
# Aliases Configuration
#------------------------------------------------------------------------------

# General Aliases
alias env="cd $HOME/Environment"
alias zshcfg="code ~/.zshrc"
alias hist="history 0"

# Cocoa Developer aliases
alias podi="pod install"
alias podiu="pod install --repo-update"

# Open in Fork aliases
alias fkenv="fork $HOME/Environment/"

# .NET Core aliases
alias dntl="dotnet tool list -g"
alias dntuef="dotnet tool update -g dotnet-ef"

# Git aliases
alias gitcb="git clone-branches"