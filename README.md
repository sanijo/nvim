### Note
Build neovim:
```
https://github.com/neovim/neovim/wiki/Building-Neovim
```

### ThePrimeagen's init.lua
Prerequisite: install [ripgrep](https://github.com/BurntSushi/ripgrep).

[The full video of ThePrimeagen setting up this repo](https://www.youtube.com/watch?v=w7i4amO_zaE)

For anyone that is interested in my vimrc, i will have a commit log below
documenting each one of my commits (easy to C-f the change you want to know
about though i would just suggest `git log -S`).

### Change Log
* [33eee9ad](https://github.com/ThePrimeagen/init.lua/commit/33eee9ad0c035a92137d99dae06a2396be4c892e) initial commits
* [cb210006](https://github.com/ThePrimeagen/init.lua/commit/cb210006356b4b613b71c345cb2b02eefa961fc0) netrw, autogroups for yank highlighting, and auto remove whitespace
* [c8c0bf4a](https://github.com/ThePrimeagen/init.lua/commit/c8c0bf4aeacd0bd77136d9c5ee490680515a106b) zenmode.  i really like this plugin
* [81c770d2](https://github.com/ThePrimeagen/init.lua/commit/81c770d2d2e32e59916b39c7f5babbc8560f7a82) copilot testing
* [4a96e645](https://github.com/ThePrimeagen/init.lua/commit/4a96e6457b0a0241ca7361ce62177aa6b9a33a38) fugitive mappings for push and pull
* [a3bad06a](https://github.com/ThePrimeagen/init.lua/commit/a3bad06a4681c322538d609aa1c0bd18880f77c6) disabled eslint.  driving me crazy

## Quickstart
After cloning repo open nvim.
Packer repository is cloned somewhere on your `packpath` automatically.
Close nvim.
Then open nvim and do:
* open packer.lua and source it with :so
* :PackerSync to install
* Close nvim, and reopen it

### Foam code:
It's possible that clangd is having trouble parsing the OpenFOAM code in your directory, which could be causing issues with code completion or other language server features.
One thing you can try is to generate a compilation database for your OpenFOAM code using the bear utility. bear intercepts the commands used to build your code and generates a JSON file that clangd
can use to understand your project's build configuration.

```
bear ./Allwmake
```

### Copilot:
Copilot requests Node.js version to 16.x or newer.
First check the existing verison:

```
node -v
```

If it is older you can do the following:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

```
source ~./bashrc
```

```
nvm install node
```
