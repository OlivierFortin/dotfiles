# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ofortin/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git brew node macos docker)
source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.aliases
source ~/.exports
source ~/.functions
source ~/bin/z.sh


alias vol="/usr/local/Cellar/volatility/2.6.1_2/bin/vol.py"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

function volatility() {
  docker run --rm --user=$(id -u):$(id -g) -v "$(pwd)":/dumps:ro,Z -ti phocean/volatility $@
}
export npm_config_prefix="$HOME/.local"
export PATH="$HOME/.local/bin:$HOME/go/bin:$HOME/bin:$PATH"
export PATH="$PATH:/home/ofortin/.dotnet/tools"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
source ~/powerlevel10k/powerlevel10k.zsh-theme

export QSYS_ROOTDIR="/home/ofortin/prog/pkg/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
