# Ian's Dotfiles

Trying out this whole bare github repo thing. 

It's a mix of [this](https://d2weber.github.io/DougTyped/posts/dotfiles-under-control/) and a few other articles.

`dotfiles` is aliased to `git dotfiles $@` for easy management.

## Getting started
Just pull this repo straight in to `~/`. 

```bash
git clone --bare https://github.com/iandoesallthethings/.dotfiles.git ~/.dotfiles.git

# Then restart and add:
dotfiles config --local showUntrackedFiles no
dotfiles config --local oh-my-zsh.hide-status 1
```

* Note: You might want/have to backup existing files first.
