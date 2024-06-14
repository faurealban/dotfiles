.PHONY: all

all:
	# bash_profile
	rm -rf ./other/bash/.bash_profile
	cp ~/.bash_profile ./other/bash/.bash_profile

	# bashrc
	rm -rf ./other/bash/.bashrc
	cp ~/.bashrc ./other/bash/.bashrc

	# hypr ecosystem
	rm -rf ./.config/hypr/
	cp -r ~/.config/hypr/ ./.config/

	# scripts
	rm -rf ./.config/scripts/
	cp -r ~/.config/scripts/ ./.config/

	# kitty
	rm -rf ./.config/kitty/
	cp -r ~/.config/kitty/ ./.config/

