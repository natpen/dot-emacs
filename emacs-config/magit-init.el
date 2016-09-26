;;; -*- mode: emacs-lisp; -*-

(use-package magit
	     :ensure t
	     :init
	     (progn
	       (use-package ido-completing-read+
		 :ensure t)
	       (use-package magit-gh-pulls
		 :ensure t
		 :diminish "+PRs")
	       (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))
	     :config
	     (progn
	       (setq magit-completing-read-function 'magit-ido-completing-read)
	       (setq magit-branch-arguments nil)
	       (add-hook 'after-save-hook 'magit-after-save-refresh-status))
	     :bind
	     (("C-x g" . magit-status)
	      ("C-x M-g" . magit-dispatch-popup)))

(provide 'magit-init)
;;; magit-init.el ends here
