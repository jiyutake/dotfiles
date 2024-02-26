
## Overview

<div align="center">
<img src="showcase/image01.png" alt="showcase">

<br>

This is my <code>old nix dotfiles</code> repo, which has some neat configurations for you to take some inspiration from (please don't refer to this old one here for making new stuff)
(dont mind the image being *really* outdated)


</div>

### Features

* <code>Home-manager</code> modularized configurations;
* <code>Neovim</code> as a text editor;
* <code>Picom</code> to composite on X11 window managers;
* <code>Starship</code> as my shell's prompt;
* <code>Librewolf</code> as my browser (featuring custom css!);
* <code>Elkowar's wacky widgets</code> for widgets.

## About Nix

hell yeah imdefinitively rewriting this

As you may probably know, <code>Nix</code> and <code>NixOS</code> are hot declarative mess (<code>Home-manager</code> included), that lets you infect other hosts with your messy code easily.

While you have those advantages, i wouldn't recommend getting into Nix because it really is time consuming. Feel free to go ahead and jumping into it, but expect something totally diffrent from other distributions.

Speaking about home-manager, right below this is an example of how <code>flake.nix</code>'s modules are located(hopefully):

    ../home-manager/

    /hosts
      /freedom
        /configuration.nix
        ...
    ...

    /user
      /applications
        /window-managers
        /shell
        /variables
        ...
    flake.nix
    home.nix
    ...
