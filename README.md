# My dotfiles
## Preview
![](./preview/terminal.png)
![](./preview/nvim.png)

## Installation
If you only want some specific configuration, search in this repo.\
If you want everything: run `install.zsh`

> [!WARNING]
> This will overwrite your configs. Backup recommended. Use at your own risk.

## After install
### Nvim
```
nvim
:Lazy sync
:MasonInstallAll
```

### Droidcam
Add `v4l2loopback` to `/boot/loader/entries/*_linux.conf`

## Included
- docker
- dolphin
- droidcam
- fcitx5
- foot
- hyprland + some of its ecosystem's utils
- librewolf
- neovim
- pipewire
- vesktop
- virtualbox
- zsh

For a more detailled list, take a look at [install.zsh](./install.zsh)
