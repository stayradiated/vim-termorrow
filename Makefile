cwd = $(shell pwd)

link:
	mkdir -p ~/.config/nvim/colors
	ln -fs ${cwd}/colors/termorrow.vim ~/.config/nvim/colors/termorrow.vim

unlink:
	rm ~/.config/nvim/colors/termorrow.vim
