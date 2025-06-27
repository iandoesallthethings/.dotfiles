# Ian's Dotfiles

Trying out this whole bare github repo thing. 

It's a mix of [this](https://d2weber.github.io/DougTyped/posts/dotfiles-under-control/) and a few other articles.

`dotfiles` is aliased to `git dotfiles $@` for easy management.

## Getting started
You might have to backup existing dotfiles first.
```bash
# Clone the repo directly in ~/
git clone https://github.com/iandoesallthethings/.dotfiles

# On macos, install everything from the brewfile
brew bundle install

# Reload the terminal or switch to warp then,
# Pull the nvim kickstart.
setup_nvim
```
