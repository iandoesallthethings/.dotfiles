###############
# BOILERPLATE #
###############

export ZSH="$HOME/.oh-my-zsh" # Path to your Oh My Zsh installation.
ZSH_THEME="robbyrussell"
plugins=(git)
plugins+=(zsh-vi-mode)

source $ZSH/oh-my-zsh.sh


##############
# PATH STUFF #
##############

# Python
export ASDF_DATA_DIR=$HOME/.asdf
export PATH="$ASDF_DATA_DIR/shims:$PATH"  # ASDF
export PATH="$PATH:/Users/ian/.local/bin" # Created by `pipx` on 2025-01-06 20:03:43

###########
# HELPERS #
###########
setup_plugins() {
    if [ ! -d "$ZSH_CUSTOM/plugins/zsh-vi-mode" ]; then
        git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
        return 
    fi
}

setup_nvim() {
    nvim_config="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
    if [ -d "$nvim_config" ]; then
        echo "Neovim is already set up."
        return
    fi

    brew install neovim
    git clone https://github.com/iandoesallthethings/kickstart.nvim.git "$nvim_config"
}

is_installed() {
    if [ -z "$(command -v $1)" ]; then
        echo "$1 is not installed."
        return 1
    fi
}

#############
# SHORTCUTS #
#############

# alias neofetch='fastfetch'
alias neofetch='fastfetch | cowsay -n'
alias cat='bat' # Pretty print when catting
alias nvc="nvim ~/.config/nvim/init.lua"
alias zshc="nvim ~/.zshrc"
alias rc="source ~/.zshrc"

dotfiles() {
    git dotfiles $@
}

# Make streamlit a global (assuming it's installed)
streamlit() {
    is_installed streamlit || return
    python -m streamlit run $@
}

# bun completions
[ -s "/Users/ian/.bun/_bun" ] && source "/Users/ian/.bun/_bun"

