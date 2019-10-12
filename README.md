# Ismael Aderdor dotfiles

Hi! Those are the very dotfiles I use.

I'm actually using storing here my dotfiles for the following programs:

 - atom
 - neovim
 - tmux
 - i3 and i3 status bar
 - git


## Use

My dotfiles are meant to be managed with stow. Use the next commands to install the dotfiles:

```
stow -v -t ~ zsh tmux git
stow -v -t ~/.config config
```

Then, you must install some fonts (TODO™) and run `fc-cache` to be able to use the fonts.


## TODO

Here we go with the typical things I'd want to add to my dotfiles:

 - Add the fonts I use and and how to install them.
 - Remove the config folder and divide it in a *folder per app* basis.
 - Look for how automatizing installing packagges for the distros I use.

## Licence

Unless some file says the opposite, this project is under the MIT licence.

```
Copyright 2015-2019 Ismael Aderdor <info@iaderdor.info>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```
