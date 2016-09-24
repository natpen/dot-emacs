;;; -*- mode: emacs-lisp; -*-

(add-hook 'python-mode-hook (lambda()
			      (use-package py-yapf
				:ensure t)
				;; :config ((py-yapf-enable-on-save)))
			      (use-package jedi
				:ensure t
				:config
				(progn
				  (jedi:setup)
				  (setq jedi:complete-on-dot t)))
			      (eldoc-mode)
			      (setq tab-width 2)))

(provide 'python-settings)
;;; python-settings.symlink ends here1
