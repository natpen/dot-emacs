;;; -*- mode: emacs-lisp; -*-

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;; stop warnings from GnuTLS library when using HTTPS
(setq gnutls-min-prime-bits 4096)

;; ain't nobody got time to type "yes"
(fset 'yes-or-no-p 'y-or-n-p)

;; because it's faster than the default scp
(setq tramp-default-method "ssh")

;; spaces by default, yo
(setq-default indent-tabs-mode nil)

;; sentences end with one space, yo
(setq sentence-end-double-space nil)

(when (window-system)
  (tool-bar-mode 0)
  (when (fboundp 'horizontal-scroll-bar-mode)
    (horizontal-scroll-bar-mode -1))
  (scroll-bar-mode -1))

(show-paren-mode t)
(setq require-final-newline t)

;(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(setq
   backup-by-copying t       ; don't clobber symlinks
   backup-directory-alist
       '(("." . "~/.saves")) ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 6
   version-control t)        ; use versioned backups

(global-hl-line-mode t)

(when (fboundp 'winner-mode)
  (winner-mode 1))

(use-package beacon
  :ensure t
  :diminish ""
  :config
  (beacon-mode 1))

(setq-default cursor-type 'bar)

(use-package ledger-mode
  :ensure t
  :mode "\\.ledger$")

(use-package ag
  :ensure t
  :defer t)
(use-package diminish
  :ensure t
  :defer t)
(use-package dumb-jump
  :ensure t
  :defer t)
(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))
(use-package ggtags
  :ensure t
  :defer t)
(use-package highlight-symbol
  :ensure t
  :defer t)
(use-package markdown-mode
  :ensure t
  :defer t)
(use-package restclient
  :ensure t
  :defer t)
(use-package smartparens
  :ensure t)
(use-package yaml-mode
  :ensure t)
(use-package planet-theme
  :ensure t
  :init (add-hook 'after-init-hook (load-theme 'planet t)))
(use-package highlight-indentation
  :ensure t
  :defer t)

(defun delete-current-line ()
  "Delete (not kill) the current line."
  (interactive)
  (save-excursion
    (delete-region
     (progn (forward-visible-line 0) (point))
     (progn (forward-visible-line 1) (point)))))
(global-set-key (kbd "C-c DEL") 'delete-current-line)

(defun prelude-toggle-fold ()
  "Toggle fold all lines larger than indentation on current line"
  (interactive)
  (let ((col 1))
    (save-excursion
      (back-to-indentation)
      (setq col (+ 1 (current-column)))
      (set-selective-display
        (if selective-display nil (or col 1))))))
(global-set-key [(M C i)] 'prelude-toggle-fold)

(global-set-key
 (kbd "<f5> <f5> 1")
 (lambda ()
   (interactive)
   (magit-status "~/code/dotfiles")))

(provide 'general-configuration)
;;; general-configuration.symlink ends here
