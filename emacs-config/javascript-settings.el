;;; -*- mode: emacs-lisp; -*-

(add-hook 'js-mode-hook
	  (lambda ()
	    (highlight-indentation-mode)
	    (add-hook 'before-save-hook 'jsfmt-before-save)
	    (setq indent-tabs-mode nil)
	    (setq tab-width 2)
	    (setq js-indent-level 2)))

(provide 'javascript-settings)
;;; javascript-settings.symlink ends here
