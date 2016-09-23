;;; -*- mode: emacs-lisp; -*-

(add-hook 'python-mode-hook (lambda()
			      (eldoc-mode)
			      ;; (py-yapf-enable-on-save)
			      (jedi:setup)
			      (setq jedi:complete-on-dot t)
			      (setq tab-width 2)))

(provide 'python-settings)
;;; python-settings.symlink ends here1
