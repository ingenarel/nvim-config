### if you're not me then it's probably best if you fork it. cz i tinker with shit and push half done commits :)
### i use this config mostly on linux, altho i do use it in windows sometimes. and it works
- make sure that you don't have a nvim directory in your config. and if you do, rename it to something.
- clone this bitch.
- install vim-plug from the official repo
    https://github.com/junegunn/vim-plug
- make sure you have nodejs, python, ripgrep, and nerdfonts installed. a terminal with truecolor support is also recommended. i use kitty in linux and windows terminal in windows.
- yazi is being used as a file manager and i'm also using lazygit. so you should install those too.
- use command `PlugUpdate`
- run `COQdeps` if it tells you to.
- if running for the first time, mason should start to install all the language servers. run `:Mason` to see the process.
- the debuggers don't currently work atm. i couldn't figure out how to make codelldb stop at the breakpoints, and currently debugpy is broken.
### these don't use mason to install, but are installed and updated seperately by the config, if you want to install these using mason, you need to change the config accordingly:
- python:
    - black (formatter)
    - debugpy (dap)
