# natpen's dot-emacs

This is a self-contained, batteries-mostly-included, easily-bootstappable Emacs configuration, with a focus on modularization of settings and dependencies by development environment.

Some general highlights:

* [ag](https://github.com/Wilfred/ag.el)
* [auto-complete](https://github.com/auto-complete/auto-complete)
* [flx-ido (from flx)](https://github.com/lewang/flx)
* [flycheck](https://github.com/flycheck/flycheck)
* [ido-vertical-mode](https://github.com/creichert/ido-vertical-mode.el)
* [jedi](https://github.com/tkf/emacs-jedi)
* [linum-relative](https://github.com/coldnew/linum-relative)
* [magit](https://github.com/magit/magit)
* [projectile](https://github.com/bbatsov/projectile)
* [smex](https://github.com/nonsequitur/smex)
* [yasnippet](https://github.com/joaotavora/yasnippet)
* a bunch of other nifty things that I'm probably forgetting

## Installation

```
git clone https://github.com/natpen/dot-emacs.git
cd dot-emacs
./bootstrap
```

The nice thing about this installation approach is that only two things are symlinked to your home directory - a .emacs file and a .emacs-config/ directory. The bootstrap script is polite and will prompt you before overwriting anything. And after it has been run, the directory symlink will allow you to add and remove configuration files to the emacs-config directory without having to worry about running the bootstrap script ever again.

#### Emacs itself...

On OSX, I use Emacs 25.1.1 from Homebrew - you can see the installation flags I use [here](https://github.com/natpen/dotfiles/blob/master/Brewfile#L11) in my [dotfiles](https://github.com/natpen/dotfiles) repo. I symlink it to Applications and switch off between running the windowed version from there and running the terminal version with `emacs -nw`.
