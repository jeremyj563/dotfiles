if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.setup-profile
source $HOME/.geometer-profile

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    helm
    kubectl
    kube-ps1
    ssh-agent
)
source $ZSH/oh-my-zsh.sh

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
. $HOME/.asdf/completions/asdf.bash

export EDITOR='vim'
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO: Linux only?
# eval `dircolors ~/.dircolors`
export KUBECONFIG="$HOME/.kube/config"\
"$HOME/.kube/geoshared-construction-config:"\
"$HOME/.kube/geoshared-staging-config:"\
"$HOME/.kube/vex-staging-config:"\
"$HOME/.kube/vex-construction-config:"\
"$HOME/.kube/herd-staging-config"

# Aliases
alias watch="watch "

# Work Aliases
alias geometer="cd $HOME/workspace/geometer"
alias apex="cd $HOME/workspace/vex-dev/apex"
alias herd="cd $HOME/workspace/vex-dev/herd"
alias dots="cd $HOME/dotfiles"
alias setup="cd $HOME/setup"
alias s='bin/dev/start'
alias u='bin/dev/update'
alias t='bin/dev/test'
alias shipit='bin/dev/shipit'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

