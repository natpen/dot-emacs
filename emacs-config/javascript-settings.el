;;; -*- mode: emacs-lisp; -*-

(add-hook 'js-mode-hook
	  (lambda ()
	    (use-package jsfmt
	      :ensure t
	      :init
	      (add-hook 'before-save-hook 'jsfmt-before-save))
	    (highlight-indentation-mode)
	    (setq indent-tabs-mode nil)
	    (setq tab-width 2)
	    (setq js-indent-level 2)))

(provide 'javascript-settings)
;;; javascript-settings.symlink ends here
