# Ismael Aderdor dotfiles


Hi! Those are the very dotfiles I use.

I'm actually storing here dotfiles for the following programs:

 - git
 - i3 and i3 status bar
 - kitty
 - neovim
 - tmux
 - zsh
 - autorandr

Moreover, there's a script which install all the fonts I want to use from github repos (but I think I'll change it).

## Use

### Automated installation script

You can install all by running this command in an archlinux or manjaro system:

```
curl -fL https://raw.githubusercontent.com/iaderdor/dotfiles/master/install.sh | bash
```

Please, take care that your user must to be able to use the sudo command succesfully. 

### Manually install

First, you should have installed the apps described at the start of this readme. Then, be aware that my dotfiles are meant to be managed with stow. Use the next commands to install the dotfiles:

```
stow -v -t ~ zsh git
stow -v -t ~/.config config
stow -v -t ~/.local local
```

Then, if you want to install all the fonts I use, you must `cd` into the base folder of the repo and execute the following command:

```
ruby setup_fonts.rb
```

This will download and install all the fonts I've chosen for you.

## Test

Test the installation script by using docker. You should first build the image,
run and then, get into the container.

```
docker build --tag=testdotfiles .
docker container run -itd --name testdotfiles_con testdotfiles
docker exec -it testdotfiles_con bash
```
Once inside, launch the `./install.sh` script provided and wait. When asked to write a password, it is `verysafepassword`.
You should check:
 - There is no error when installing things.
 - Neovim has all its plugins installed.
 - .oh-my-zsh folder is in `~/.local/share` and not in `~`.

## TODO

Here we go with the typical things I'd want to add to my dotfiles:

 - [ ] Work on moving all configuration files to `.conf` folder.
 - [x] Bootstrapping the installation of the dotfiles.
 - [ ] Add test to check if all was installed ok.
 - [ ] Solving the issues with the magic triangles of tmux changing colors.
 - [ ] Add icons to the repo.

## Licence

Unless some file says the opposite, this project is under the MIT licence.

```
Copyright 2015-2020 Ismael Aderdor <info@iaderdor.info>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```

