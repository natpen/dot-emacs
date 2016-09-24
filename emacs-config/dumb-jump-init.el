;;; -*- mode: emacs-lisp; -*-

(use-package dumb-jump
  :ensure t
  :init (dumb-jump-mode)
  :bind (("C-c ." . dumb-jump-go)
	("C-c M-." . dumb-jump-quick-look)
	("C-c ," . dumb-jump-back)))

(provide 'dumb-jump-init)
;;; dumb-jump-init.el ends here
