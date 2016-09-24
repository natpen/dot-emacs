;;; -*- mode: emacs-lisp; -*-

(use-package cargo
  :ensure t)

(use-package company
  :ensure t
  :init (setq annotations-company-tooltip-align t))

(use-package flycheck-rust
  :ensure t)

(use-package racer
  :ensure t
  :init (setq racer-rust-src-path "~/code/rust/src/")
  :config (progn
	    (eldoc-mode)
	    (company-mode)))

(use-package rust-mode
  :ensure t
  :config (progn
	    (racer-mode)
	    (highlight-indentation-mode)
	    (cargo-minor-mode)
	    (add-hook 'before-save-hook 'rust-format-buffer))
  :bind (:map (rust-mode-map
	       ("C-c [tab]" . rust-format-buffer)
	       ("[tab]" . company-indent-or-complete-common))))

(provide 'rust-settings)
;;; rust-settings.symlink ends here
