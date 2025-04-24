# Neovim Config
## Introduction
This is my [neovim](https://neovim.io/) configuration that I use on my machines. I use it for work and uni. It is currently mainly configured for python, as that is what I most commonly write in.

## Requirements
- A Linux distro. This one assumes Ubuntu since that's what I use, but any distro will work fine. If you're a windows user and don't want to go through the effort of partitioning your hard drive, I recommend using [wsl](https://learn.microsoft.com/en-us/windows/wsl/install)
- [neovim](https://neovim.io/) >= 0.10.0 (the normal `sudo apt-get install neovim` will install an outdated version. I got my neovim installation from the [unstable ppa](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable))
- [python >= 3.8](https://www.python.org/downloads/) - This is the minimum version for debugpy, which is a requrement.
- A python [virtual environment](https://docs.python.org/3/library/venv.html) (venv)
- [debugpy](https://pypi.org/project/debugpy/) - to be installed inside your virtual environment
- [fd](https://github.com/sharkdp/fd)
- A **C** compiler for linux (`sudo apt-get update && sudo apt-get install build-essential`)
- Node.js (`sudo apt-get install nodejs`) and npm (`sudo apt-get install npm`)

## Optional 
- A [nerd font](https://www.nerdfonts.com/). My setup uses CaskaydiaCove Nerd Font, but any installed nerd font can be used by editing `init.lua`. Otherwise, remove the options in the 'Font stuff' section of `init.lua` to not use a nerd font at all.

## Installation
1. Install neovim, if you haven't already.
2. Install fd, a C compiler, Node.js, npm, python and venv using the above instructions.
3. Set up your Python virtual environment using `python -m venv /path/to/venv` I have mine stored as `"~/.virtualenvs/main_venv"`. Ensure you change the `require("dap-python").setup(...)` line in `init.lua` to the location where your virtual environment is set up.
4. Install debugpy into your virtual environment by using `. /path/to/venv/bin/activate` and `pip install debugpy`
5. Clone the contents of this repo into a folder named `~/.config/nvim` - If you've never used nvim before, you may need to use `mkdir -p ~/.config/nvim` first. Ensure there is no intermediary folder between `~/.config/nvim` and the contents of this repo. For example, this file should be sitting in `~/.config/nvim/README.md`
6. Launch neovim using `nvim`. The packages should start installing automatically.
