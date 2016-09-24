;;; -*- mode: emacs-lisp; -*-

(use-package linum-relative
  :ensure t
  :config (progn
	    (load "~/.emacs-config/linum-off.el")
	    (global-linum-mode t)
	    (setq linum-format "%3d\u2502")))

(provide 'init-linum)
;;; linum-init.el ends here
