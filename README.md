# Neovim Config
## Introduction
This is my [neovim](https://neovim.io/) configuration that I use on my machines. I use it for work and uni. It is currently mainly configured for python, as that is what I most commonly write in.

## Requirements
- [neovim](https://neovim.io/) >= 0.10.0 (the normal `sudo apt-get install neovim` will install an outdated version. I got my neovim installation from the [unstable ppa](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable))
- [python >= 3.8](https://www.python.org/downloads/) - This is the minimum version for debugpy, which is a requrement.
- A python [virtual environment](https://docs.python.org/3/library/venv.html) - I have mine stored as `"~/.virtualenvs/main_venv"`. Ensure you change the `require("dap-python").setup(...)` line in `init.lua` to the location where your virtual environment is set up.
- [debugpy](https://pypi.org/project/debugpy/) - to be installed inside your virtual environment
- [fd](https://github.com/sharkdp/fd)
- A **C** compiler for linux (`sudo apt-get update && sudo apt-get install build-essential`)
- Node.js (`sudo apt-get install nodejs`) and npm (`sudo apt-get install npm`)

## Optional 
- A [nerd font](https://www.nerdfonts.com/). My setup uses CaskaydiaCove Nerd Font, but any installed nerd font can be used by editing `init.lua`. Otherwise, remove the options in the 'Font stuff' section of `init.lua` to not use a nerd font at all.
