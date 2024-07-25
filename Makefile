.PHONY: all

all:
	@# bash_profile
	@rm -rf ./other/bash/.bash_profile
	@cp ~/.bash_profile ./other/bash/.bash_profile

	@# bashrc
	@rm -rf ./other/bash/.bashrc
	@cp ~/.bashrc ./other/bash/.bashrc

	@# hypr ecosystem
	@rm -rf ./.config/hypr/
	@cp -r ~/.config/hypr/ ./.config/

	@# scripts
	@rm -rf ./.config/scripts/
	@cp -r ~/.config/scripts/ ./.config/

	@# kitty
	@rm -rf ./.config/kitty/
	@cp -r ~/.config/kitty/ ./.config/

	@# nvim
	@rm -rf ./.config/nvim/
	@cp -r ~/.config/nvim/ ./.config/

	@# tuigreet
	@rm -rf ./other/greetd/config.toml
	@cp -r /etc/greetd/config.toml ./other/greetd/config.toml

	@# fcitx5
	@rm -rf ./.config/fcitx5/
	@cp -r ~/.config/fcitx5/ ./.config/

	@# obsidian
	@rm -rf ./.config/obsidian/Preferences
	@cp -r ~/.config/obsidian/Preferences ./.config/obsidian/Preferences

	@echo ">> Done"
