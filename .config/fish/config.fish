source ~/.config/fish/themes/tokyonight.fish

set PATH $HOME/.local/bin/ $PATH

### Show full path with prompt_pwd
set -g fish_prompt_pwd_dir_length 0

### Custom Prompt
#function fish_prompt
#    printf '%s%s%s%s %s%s%s%s$ ' (set_color brred --bold)"[" (set_color bryellow --bold)$USER (set_color brgreen --bold)@ (set_color brblue --bold)$hostname \
#        (set_color brmagenta --bold) (prompt_pwd) (set_color brred --bold)"]" (set_color normal)
#end

### Disable greetings
set fish_greeting ""

### Aliases
# Pacman related aliases
alias pacup='sudo pacman -Syu'
alias pacadd='sudo pacman -S --needed'
alias pacrem='sudo pacman -R'
alias pacsearch='sudo pacman -Ss'

# AUR related aliases
alias aur='paru'
alias aurup='paru -Sua'
alias auradd='paru -S'
alias aurrem='paru -R'
alias aurs='paru -Ss'
alias aurwu='paru -Qua'

# Listing related aliases
alias ls='EXA_ICON_SPACING=2 exa --sort=type --icons'
alias lh='EXA_ICON_SPACING=2 exa -a --sort=type --icons'
alias ll='EXA_ICON_SPACING=2 exa -lhg --sort=type --icons'
alias la='EXA_ICON_SPACING=2 exa -lhag --sort=type --icons'
alias lod='EXA_ICON_SPACING=2 exa -D --sort=name --icons'
alias tree='exa -T'

# cat replacement with bat
alias cat='bat'

# grep related aliases
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# type vim to use neovim
# alias vim='nvim'

# clear the screen
alias cl='clear'

# Go up without cd
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# MKDIR can create parents
alias mkdir='mkdir -pv'

# Confirmations for overwrite and delete
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

### Bash autostart commands
#if test "$TERM" = "xterm-kitty"
#    fastfetch
#else
#    neofetch
#end
pyfiglet -s -f slant "I use Arch, btw" | lolcat

### Starship prompt
starship init fish | source