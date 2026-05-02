Personal system configuration files managed with [`GNU stow`](https://www.gnu.org/software/stow/).

## Installation

Install `stow`, clone the repo, then symlink whichever configs you want:

```sh
git clone git@github.com:Chris1221/dotfiles.git
cd dotfiles
stow -t ~/ nvim tmux zsh git
```

I alias `stow='stow -t ~/'` to avoid repeating the target flag.

## Configs

| Directory | Program | Notes |
|---|---|---|
| `nvim/` | Neovim | `vim-plug` plugins; R, LaTeX, C++ support |
| `tmux/` | tmux | Custom status bar and pane bindings |
| `zsh/` | Zsh | Oh My Zsh, `robbyrussell` theme |
| `git/` | Git | Global gitconfig; machine-specific and sensitive settings (signing key, email) go in `~/.gitconfig.local` (not committed) |
| `R/` | R | `.Rprofile` |
| `latexmk/` | latexmk | `.latexmkrc` |

Mostly for my own use when transferring systems, but anyone is free to tinker.
