bindkey "^[[1;3C" forward-word   # Option+Right
bindkey "^[[1;3D" backward-word  # Option+Left

bindkey -v
export EDITOR=vim

if command -v gdircolors &> /dev/null; then
    eval "$(gdircolors -b)"
    alias ls='gls --color=auto'
    alias ll='gls -la --color=auto'
else
    export CLICOLOR=1
    alias ll='ls -la'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

function git_branch_name() {
    branch=$(git symbolic-ref --short HEAD 2> /dev/null)
    if [[ -n $branch ]]; then
        echo "%{$(tput setaf 142)%}($branch)%{$(tput sgr0)%}"
    else
        echo ""
    fi
}
setopt prompt_subst
#prompt='%{$(tput setaf 37)%}%n@%m %{$(tput setaf 168)%}%~%{$(tput sgr0)%}$(git_branch_name) '
prompt='%n@%m%f %F{168}%~%f$(git_branch_name) '
