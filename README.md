# Neovim Config
## Introduction
This is my [neovim](https://neovim.io/) configuration that I use on my machines. I use it for work and uni. It is currently mainly configured for python, as that is what I most commonly write in.

## Requirements
- [neovim] >= 0.10.0 (the normal `sudo apt-get install neovim` will install an outdated version. I got my neovim installation from the [unstable ppa](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable))
- [pydebug](https://pypi.org/project/pydebug/)
- [fd](https://github.com/sharkdp/fd)
- A python [virtual environment](https://docs.python.org/3/library/venv.html) - I have mine stored as `"~/.virtualenvs/main_venv"`. Ensure you change the `require("dap-python").setup(...)` line in `init.lua` to the location where your virtual environment is set up.
- A **C** compiler for linux (`sudo apt-get update && sudo apt-get install build-essential`)
