#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Dj-Yacine (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Define Editor
export EDITOR=nano

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c='clear'
alias ff='fastfetch'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias v='$EDITOR'

alias wifi='nmtui'
alias rw='~/dotfiles/waybar/launch.sh'
alias dot="cd ~/dotfiles"

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"


# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
# cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH if on wm
# -----------------------------------------------------
# echo ""
# if [[ $(tty) == *"pts"* ]]; then
#     pfetch
# else
#     if [ -f /bin/hyprctl ]; then
#         echo "Start Hyprland with command Hyprland"
#     fi
# fi


PS1='[\u@\h \W]\$ '

#################################
# Go

export GOAMD64=v3
export GOPATH="$HOME/Dev/Go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
export PATH="$PATH:$GOPATH/bin"

#################################
# Pipx

export PATH="$PATH:/root/.local/bin"
export PATH="$PATH:/home/dj-yacine/.local/bin"

################################
# Android Studio

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"

################################
# Java

export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
export PATH=$JAVA_HOME/bin:$PATH 

################################
# Flutter && Dart

export PATH="$PATH:/usr/bin/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

###############################
# Rust

export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$RUSTUP_HOME:$CARGO_HOME:$CARGO_HOME/bin"

. "$HOME/.cargo/env"

###############################
# Apps

export ESRGEN_HOME="/home/dj-yacine/Apps/real-esrgan/"
export FFMPEG_SCRIPTS_HOME="/home/dj-yacine/Apps/ffmpeg-scripts/"

export PATH="$PATH:$ESRGEN_HOME"
export PATH="$PATH:$FFMPEG_SCRIPTS_HOME"
