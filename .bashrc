#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setting vi mode for Bash
set -o vi
export EDITOR='vi'
export VISUAL='vi'

# Bash Prompt
PS1='[\u@\h \W]\$ '

# Keybindings
bind -x '"\el": "ls"'

# General Aliases

# Git Aliases
alias gc='git add . && git commit -m'
alias gps='git push origin main'
alias gpl='git pull origin main'

# Cat Aliases
alias cg='cat ~/Recent\ documents/Random_Information/Github'
alias co='cat ~/Recent\ documents/Osap/Osap/Oan\ for\ Osap.txt'

# Command Shortcuts
alias e='exit'
alias f='cd $(find ~ -type d -name '
alias c='clear'
alias '..'='cd ..'
alias ba='cd ~ && nvim .bashrc'
alias sba='source .bashrc' 

# Colored Commands
alias ls='ls --color=auto'
alias g='grep --color=auto'

# Pacman Aliases
alias pi='sudo pacman -S '
alias pu='sudo pacman -Syu'
alias pss='sudo pacman -Ss'
alias pr='sudo pacman -Rns '

# Storage Aliases
alias mountusb='sudo mount /media/backup_usb'
alias ejectusb='sudo umount /media/backup_usb'
alias backusb='sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".VirtualBoxVMs" / /media/backup_usb'

alias mounthdd='sudo mount /mnt/external_hdd'
alias ejecthdd='sudo umount /mnt/external_hdd'
alias backhdd='sudo rsync -aAXv --delete --dry-run --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".VirtualBoxVMs" / /mnt/external_hdd'

# Starship addon
eval "$(starship init bash)"
# echo -e '\033]720;200\007'

# Tmux
sleep 0.1s
tmux
clear

# Fzf
pf() {
  local dir
  cd $HOME && dir=$(find . -type d -not -path '*/\.*' | fzf +m --ansi) && cd "$dir"
}

