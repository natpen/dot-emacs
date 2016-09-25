;;; -*- mode: emacs-lisp; -*-

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)

;(setq erc-hide-list '("JOIN" "PART" "QUIT"))

(setq
   backup-by-copying t       ; don't clobber symlinks
   backup-directory-alist
       '(("." . "~/.saves")) ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 6
   version-control t)        ; use versioned backups

(use-package ag
  :ensure t)
(use-package diminish
  :ensure t)
(use-package dumb-jump
  :ensure t)
(use-package ggtags
  :ensure t)
(use-package highlight-symbol
  :ensure t)
(use-package markdown-mode
  :ensure t)
(use-package smartparens
  :ensure t)
(use-package yaml-mode
  :ensure t)
(use-package zenburn-theme
  :ensure t
  :init (add-hook 'after-init-hook (load-theme 'zenburn t)))
(use-package highlight-indentation
	:ensure t)

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
