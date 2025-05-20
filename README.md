**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!


## Installation

### On Mac/Linux:

Delete or backup old nvim folder just in case. Below commands shows how to delete old configuration

```
rm -rf ~/.config/nvim

rm -rf ~/.local/share/nvim
```

Then, clone this repo

```
git clone https://github.com/jereok91/nvichad-jp-custom.git ~/.config/nvim && nvim
```

### On Windows:

```
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
```

```
git clone https://github.com/FStanDev/nvichad-jp-custom.git $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

Then, after all plugins installs, execute `:MasonInstallAll` and is done 😀
