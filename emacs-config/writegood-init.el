;;; -*- mode: emacs-lisp; -*-

(use-package writegood-mode
  :ensure t
  :bind (("C-c g" . writegood-mode)
	 :map writegood-mode-map
	 ("C-c C-g g" . writegood-grade-level)
	 ("C-c C-g e" . writegood-reading-ease)))

(provide 'writegood-init)
;;; writegood-init.symlink ends here
