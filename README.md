This is a repository of my personal system configuration files. It's managed by `GNU stow` so if you want to install any of the individual program's settings (i.e. emulate my `nvim`, `tmux`, and `zsh` themes), first install `stow`:

	sudo pacman -S stow

Clone the repository, then create simlinks from the repository to your home directory:

	git clone git@github.com:Chris1221/dotfiles.git
	cd dotfiles
	stow -t ~/ nvim tmux zsh # the -t option forces sim links in $HOME

And that's it! 

Mostly for my own use when transfering systems and keeping my dotfiles under VC but anyone is free to tinker.
