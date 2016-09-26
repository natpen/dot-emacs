;;; -*- mode: emacs-lisp; -*-

(use-package drag-stuff
  :ensure t
  :diminish drag-stuff-mode
  :init (progn
	  (setq drag-stuff-modifier '(meta shift))
	  (drag-stuff-global-mode 1)))

(provide 'drag-stuff-init)
;;; drag-stuff-init.el ends here
