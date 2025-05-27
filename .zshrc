# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ==============================================================================
# Plugins
# ==============================================================================
plugins=(
  git
  zsh-autosuggestions
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export LANG=en_US.UTF-8
export CLIENT_SECRETS_PATH="/Users/mattb/client_secrets.json"

# ==============================================================================
# Aliases
# ==============================================================================
alias howmany='ls | wc -l'
alias sshgpu1='ssh bortoletto@gpu1.hcics.simtech.uni-stuttgart.de'
alias sshgpu2='ssh bortoletto@gpu2.hcics.simtech.uni-stuttgart.de'
alias sshgpu3='ssh bortoletto@gpu3.hcics.simtech.uni-stuttgart.de'
alias sshgpu4='ssh bortoletto@gpu4.hcics.simtech.uni-stuttgart.de'
sshjn() {
  ssh -N -L localhost:"$1":localhost:"$1" bortoletto@"$2".hcics.simtech.uni-stuttgart.de
}
alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias config='/usr/bin/git --git-dir=/Users/mattb/.cfg/ --work-tree=/Users/mattb'

# ==============================================================================
# Prompt
# ==============================================================================

function git_branch_name() {
    branch=$(git symbolic-ref --short HEAD 2> /dev/null)
    if [[ -n $branch ]]; then
        echo "($branch)"
    fi
}
setopt prompt_subst
prompt='%{$(tput setaf 37)%}%n@%m %{$(tput setaf 168)%}%1~%{$(tput sgr0)%}$(git_branch_name) '

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

# ==============================================================================
# Julia
# ==============================================================================
# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/mattb/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# Added by Windsurf
export PATH="/Users/mattb/.codeium/windsurf/bin:$PATH"
