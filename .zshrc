###############
# BOILERPLATE #
###############

export ZSH="$HOME/.oh-my-zsh" # Path to your Oh My Zsh installation.
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

##############
# PATH STUFF #
##############

# Python
export ASDF_DATA_DIR=$HOME/.asdf
export PATH="$ASDF_DATA_DIR/shims:$PATH" # ASDF
export PATH="$PATH:/Users/ian/.local/bin" # Created by `pipx` on 2025-01-06 20:03:43

setup_nvim() {
	nvim_config="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
    if [ -d "$nvim_config" ]; then
        echo "Neovim is already set up."
        return
    fi

    brew install neovim
    git clone https://github.com/iandoesallthethings/kickstart.nvim.git "$nvim_config"
}

##########
# CONFIG #
##########

# Shortcuts
alias cat='bat' # Pretty print when catting
# alias neofetch='fastfetch'
alias neofetch='fastfetch | cowsay -n'
alias nvc="nvim ~/.config/nvim/init.lua"
alias zshc="nvim ~/.zshrc"
alias rc="source ~/.zshrc"

dotfiles() {
        git dotfiles $@
}

# Make streamlit a global (assuming it's installed)
streamlit() {
	python -m streamlit run $@
}

