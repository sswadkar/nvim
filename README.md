# Neovim config

This is my Neovim setup, built on top of [LazyVim](https://github.com/LazyVim/LazyVim). It keeps the LazyVim base, then adds a few opinionated tweaks for day to day work.

Right now the custom pieces are pretty small:

- `tokyonight` as the default colorscheme
- extra LSP setup for C#, Java, Kotlin, Terraform, TypeScript, HTML, and CSS
- `neo-tree` behavior tuned to follow the current file without blowing open every directory
- `vimtex` configured to use `latexmk`, with PDF viewers picked by OS
- a couple of `lazygit` shortcuts

## Layout

- `init.lua` boots the config
- `lua/config` holds general config like keymaps and LazyVim wiring
- `lua/plugins` holds plugin overrides and additions
- `lazy-lock.json` pins plugin versions

## Notes

This repo is not a Neovim distribution or a polished starter kit. It is just my editor config, tracked in git so I can move it between machines and keep changes visible.

If you want to use it yourself, start with a working Neovim install, clone it into `~/.config/nvim`, and let LazyVim install the plugins on first launch.
