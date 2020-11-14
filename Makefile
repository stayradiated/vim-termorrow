cwd = $(shell pwd)

link:
	mkdir -p ~/.config/nvim/colors
	ln -fs ${cwd}/colors/termorrow.vim ~/.config/nvim/colors/temorrow.vim

unlink:
	rm ~/.config/nvim/colors/termorrow.vim
