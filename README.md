This is a repository of my personal system configuration files. It's managed by `GNU stow` so if you want to install any of the individual program's settings (i.e. emulate my `nvim`, `tmux`, and `zsh` themes), first install `stow`:

```sh
sudo pacman -S stow
```

Clone the repository, then create simlinks from the repository to your home directory:

```sh
git clone git@github.com:Chris1221/dotfiles.git
cd dotfiles
stow -t ~/ nvim tmux zsh
```

And that's it! Note that I usually `alias stow=stow -t ~/`. 

I've also included a list of packages installed by `pacman` and `yaourt`. To install all of these, first stow it to `$HOME` then feed it to `pacman`:

```sh
stow pacman
for x in $(cat ~/pacman_package_list.txt); do pacman -S $x; done
```

You probably don't want to do that unless you're me though. 

Mostly for my own use when transfering systems and keeping my dotfiles under VC but anyone is free to tinker.

------------------------------------

General system configurations / defaults:

- **Browser**: Firefox
	- LastPass
	- uBlock Origin
	- RES / Mod toolkit
- **Terminal**: Default Arch terminal
	- Guake
- **Shell**: Zsh with Oh My Zsh 
	- Config file in `zsh/`
- **Conky Theme**: *None, I hate conky*
- `$EDITOR`: `neovim`
	- `delek` colorscheme
	- `vundle` package manager
- **Multiplexer**: Byobu
	- *very non default behaviour, read the `tmux/.tmux.conf`
