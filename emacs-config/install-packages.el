;;; -*- mode: emacs-lisp; -*-

;;; This file is a modified version of:
;;; prelude-packages.el in https://github.com/bbatsov/prelude

(require 'cl)
(require 'package)

(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(defvar known-packages
  '(ag
    cargo
    company
    diminish
    dumb-jump
    flycheck-haskell
    flycheck-rust
    ggtags
    haskell-mode
    highlight-symbol
    jedi
    jsfmt
    linum-relative
    markdown-mode
    multiple-cursors
    py-yapf
    racer
    rust-mode
    smartparens
    smex
    writegood-mode
    yaml-mode
    zenburn-theme)
  "A list of packages to ensure are installed at launch.")

(defun known-packages-installed-p ()
  "Check if all packages in `prelude-packages' are installed."
  (every #'package-installed-p known-packages))

(defun require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package known-packages)
    (add-to-list 'known-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'require-package packages))

(defun install-packages ()
  "Install all packages listed in `known-packages'."
  (unless (known-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (require-packages known-packages)))

;; run package installation
(install-packages)

(provide 'known-packages)
