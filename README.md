### Note
Build neovim:
* v0.9.2 works fine (checkout tag v0.9.2)
```
https://github.com/neovim/neovim/wiki/Building-Neovim
```
* WARNING: on corporate machine SSL certification fails so easiest workaround is:
1. git config --global http.sslVerify false
2. touch ~/.curlrc and add following line there: insecure
### Forked from ThePrimeagen
```
https://github.com/ThePrimeagen/init.lua.git
```
[The full video of ThePrimeagen setup](https://www.youtube.com/watch?v=w7i4amO_zaE)

### Prerequisite
[Install ripgrep](https://github.com/BurntSushi/ripgrep).

### General info
I decided to migrate from [packer](https://github.com/wbthomason/packer.nvim) to
[lazy](https://github.com/folke/lazy.nvim.git) package manager, but left both
plugins.lua files available (see lua//core/bak folder). To make setup easier I
added setup bash script which enables you to decide whick package manager you
want. Default is lazy.

### Quickstart - packer

* Run:

  ```
  ./setup
  ```
  write packer and press enter.

* Open nvim and press enter to ignore warning and error messages until the
  packer starts to install all the plugins. After plugins are installed run:

  ```
  :PackerSync
  ```

* Close and reopen nvim. Everything should work.

### Quickstart - lazy

* Run:

  ```
  ./setup
  ```
  and press enter or write lazy.

* Open nvim and press and wait until lazy installs all the plugins. That's it.

### Foam code:
It's possible that clangd is having trouble parsing the OpenFOAM code in your 
directory, which could be causing issues with code completion or other language 
server features. One thing you can try is to generate a compilation database for 
your OpenFOAM code using the bear utility. bear intercepts the commands used to 
build your code and generates a JSON file that clangd can use to understand your 
project's build configuration. When building OpenFOAM do:

```
bear ./Allwmake -j
```
which will create compile_commands.json file.

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
