# Installation and configuration
## Requirements
You will need to have neovim installed together with some additional tools for your neovim config to take effect. Ensure that you have a package manager installed (like ![homebrew](https://brew.sh) for Mac) and make sure you have the following installed:

- neovim
- ripgrep - this package is used for grep search inside neovim
- npm - node package manager used to install LSP servers

If missing you can install them with brew:
```{bash}
brew install neovim
brew install ripgrep
brew install node
```
You also need to install Packer which is a package manager for neovim. You can do this by following the instructions in ![this link](https://github.com/wbthomason/packer.nvim)

## Configuration
Now that you have the basic requirements, you can just clone my configuration to your `~/.config/nvim` folder:
```{bash}
git clone https://github.com/almer101/nvim-config.git ~/.config/nvim
```
Go to your nvim config folder and run neovim (you will get some errors at the beginning which happen just because there are not neovim packages installed, we will install them now).
```{bash}
cd ~/.config/nvim
nvim .
```
Navigate to the `./lua/ialmer/packer.lua` file and when in *normal mode* source the file and run `PackerSync`:
```{vim}
:so
:PackerSync
```
This will install all the missing packages and your neovim will be ready! Close neovim and re-run it, now you should not be seeing any errors and the setup is done :)

>[!IMPORTANT]
> Your LSP servers like `lua_ls` and `pyright` are going to be automatically installed because the configuration ensures that.
> If you wish to install additional LSP servers you can do so by running `:Mason` and choosing your LSP or by requiring it
> in the Mason config file: `after/plugin/mason.lua`

