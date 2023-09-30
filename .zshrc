### If not interactive don't do anything
[[ $- != *i* ]] && return

### Prompt
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

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

### Zsh autostart commands
neofetch
