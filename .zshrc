# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
#ZSH_THEME="robbyrussell" #"frisk" #"robbyrussell" # aussiegeek, jtriley, jispwoso

# Which plugins would you like to load?
plugins=(
  git
  zsh-autosuggestions
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# ==============================================================================
# Aliases
# ==============================================================================
alias howmany='ls | wc -l'
alias sshgpu1='ssh bortoletto@gpu1.hcics.simtech.uni-stuttgart.de'
alias sshgpu2='ssh bortoletto@gpu2.hcics.simtech.uni-stuttgart.de'
alias sshgpu3='ssh bortoletto@gpu3.hcics.simtech.uni-stuttgart.de'
sshjn() {
  ssh -N -L localhost:"$1":localhost:"$1" bortoletto@"$2".hcics.simtech.uni-stuttgart.de
}
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias config='/usr/bin/git --git-dir=/Users/mattb/.cfg/ --work-tree=/Users/mattb'

# ==============================================================================
# Prompt
# ==============================================================================
COLOUR="%{$fg[cyan]%}"

function precmd {
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [ $branch ]; then
    branch=$branch" "
  fi
  PROMPT=" ${COLOUR}mattb%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %{$fg[cyan]%}$branch%{$reset_color%}"
}
precmd

function zle-line-init zle-keymap-select {
  case ${KEYMAP} in
    (vicmd)      COLOUR="%{$fg[white]%}" ;;
    (*)          COLOUR="%{$fg[cyan]%}" ;;
  esac
  precmd
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# ==============================================================================
# Conda
# ==============================================================================
export CONDA_AUTO_ACTIVATE_BASE=false
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mattb/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mattb/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mattb/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mattb/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

