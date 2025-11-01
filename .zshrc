# Created by newuser for 5.8.1

fastfetch

setopt autocd
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

if [[ -f /etc/os-release ]]; then
  read line </etc/os-release
  distro=${${${line#*=}#*\"}%\"*}
  if [ $distro = "Pop!_OS" ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  fi
elif [[ -f /etc/arch-release ]]; then
  # Arch Linux is detected
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/share/doc/pkgfile/command-not-found.zsh
elif [[ $OSTYPE == 'darwin'* ]]; then
  plugins=(git zsh-syntax-highlighting)
  source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
  echo 'Unknown OS!'
fi

export PATH="/$HOME/.cargo/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# Aliases
alias cat="batcat"
alias grep="rg"
alias ls="exa"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("/$HOME/anaconda3/bin/conda" 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
