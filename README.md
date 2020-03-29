# Ismael Aderdor dotfiles


Hi! Those are the very dotfiles I use.

I'm actually storing here dotfiles for the following programs:

 - git
 - i3 and i3 status bar
 - kitty
 - neovim
 - tmux
 - yaourt
 - zsh

Moreover, there's a script which install all the fonts I want to use from github repos (but I think I'll change it).

## Use

My dotfiles are meant to be managed with stow. Use the next commands to install the dotfiles:

```
stow -v -t ~ zsh git yaourt
stow -v -t ~/.config config
```

Then, if you want to install all the fonts I use, you must `cd` into the base folder of the repo and execute the following command:

```
ruby setup_fonts.rb
```

This will download and install all the fonts I've chosen for you.


## TODO

Here we go with the typical things I'd want to add to my dotfiles:

 - Work on moving all configuration files to `.conf` folder.
 - Bootstrapping the installation of packages I need.
 - Solving the issues with the magic triangles of tmux changing colors.

## Licence

Unless some file says the opposite, this project is under the MIT licence.

```
Copyright 2015-2020 Ismael Aderdor <info@iaderdor.info>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```

