;;; -*- mode: emacs-lisp; -*-

(use-package ido
  :ensure t
  :diminish ido-mode
  :init
  (progn (ido-mode 1)
	 (use-package ido-vertical-mode
	   :ensure t
	   :init (ido-vertical-mode 1)))
  :config
  (progn (use-package flx-ido
	   :ensure t
	   :init (flx-ido-mode 1)
	   :config (setq ido-use-faces nil))
	 (setq ido-everywhere t)
	 (setq ido-enable-flex-matching t)
	 (setq ido-create-new-buffer 'always)
	 (setq ido-ignore-extensions t)
	 (setq ido-vertical-show-count t)
	 (setq ido-vertical-define-keys 'C-n-and-C-p-only)
	 (add-to-list 'ido-ignore-files "\\.DS_Store")))

(provide 'ido-init)
;;; ido-init.el ends here
