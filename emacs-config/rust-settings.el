;;; -*- mode: emacs-lisp; -*-

(use-package cargo
  :ensure t
  :diminish cargo-minor-mode
  :mode ("\\.rs\\'" . cargo-minor-mode))

(use-package company
  :ensure t
  :diminish "CO"
  :mode ("\\.rs\\'" . company-mode)
  :init (setq annotations-company-tooltip-align t))

(use-package flycheck-rust
  :ensure t)

(use-package racer
  :ensure t
  :diminish racer-mode
  :mode ("\\.rs\\'" . racer-mode)
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
	    (flycheck-rust-setup)
	    (add-hook 'before-save-hook 'rust-format-buffer))
  :bind (:map rust-mode-map
	      ("C-c [tab]" . rust-format-buffer)
	      ("[tab]" . company-indent-or-complete-common)))

(provide 'rust-settings)
;;; rust-settings.symlink ends here
