# natpen's dot-emacs

NOTE: I just switched to a literate configuration, so this documentation is in the process of being migrated to the configuration itself. Treat organization.el as the source of truth.

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

## Version Control Notes

One of my favorite parts of getting comfortable with Emacs has been the tight integration one is able to create between development workflows and version control workflows. Simply switching from the good ol' shell-based Git porcelain to [Magit](https://github.com/magit/magit) was a bit of a profound experience for me. I've recently added [git-messenger](https://github.com/syohex/emacs-git-messenger) and [git-timemachine](https://github.com/pidu/git-timemachine) which add a few nice ways of interacting with version control from source code buffers themselves.

### [magit](https://github.com/natpen/dot-emacs/blob/master/emacs-config/git-init.el)

The illustrious Emacs-based Git porcelain. There's too much to cover in this README, but there is extensive documentation on it [here](https://magit.vc/manual/magit/). Highly recommended read.

### [git-timemachine](https://github.com/natpen/dot-emacs/blob/master/emacs-config/git-init.el)

This is handy for comparing successive revisions of a given file you're interacting with, as well as just quickly checking for the last time it was modified in source control.

### [git-messenger](https://github.com/natpen/dot-emacs/blob/master/emacs-config/git-init.el)

Curious what the last commit was to modify a certain piece of code? This will give you a quick popup with the commit message of said commit. See hints in the echo area for further actions, like viewing the entire commit in another buffer.

## Language-specific Notes

### [Python](emacs-config/python-settings.el)

The Python development environment relies on python-mode, [py-yapf](https://github.com/paetzke/py-yapf.el), and [jedi](https://github.com/tkf/emacs-jedi).

* _py-yapf_: provides strongly-opiniated (but customizable) code formatting, similar to gofmt. Make sure to `pip install yapf` from your shell for this to work properly. You'll have to call it manually, but if you want it to happen automatically on save, there is a commented out line in the config for accomplishing that. Just uncomment it.
* _jedi_: autocompletion

### [Rust](emacs-config/rust-settings.el)

The Rust development environment relies on [rust-mode](https://github.com/rust-lang/rust-mode), [company](https://github.com/company-mode/company-mode), [cargo](https://github.com/kwrooijen/cargo.el), [racer](https://github.com/racer-rust/emacs-racer), and [flycheck-rust](https://github.com/flycheck/flycheck-rust).

* _company_: this is currently the only place I use company for autocompletion - in most places I use [auto-complete](https://github.com/auto-complete/auto-complete), but the Emacs Rust autocomplete integration only seems to play well with company.

### [Go](emacs-config/golang-settings.el)

The Go development environment relies on [go-mode](https://github.com/dominikh/go-mode.el), go-autocomplete, and [go-eldoc](https://github.com/syohex/emacs-go-eldoc). Flycheck has built-in support for Go, so that works without any additional packages.

* _go-mode_: this package also integrates with [godef](https://github.com/rogpeppe/godef), so that's a (highly recommended) dependency if you want it.
* _go-autocomplete_: this package relies on [gocode](https://github.com/nsf/gocode). You can skip the Emacs-specific steps they provide.

### [Javascript](emacs-config/javascript-settings.el)

The Javascript development environment relies on [jsfmt](https://github.com/brettlangdon/jsfmt.el).

* _jsfmt_: this package relies on [jsfmt (the indentically-named global npm package consumed by this Emacs package)](https://github.com/rdio/jsfmt).
