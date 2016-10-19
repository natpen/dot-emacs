;;; -*- mode: emacs-lisp; -*-

(use-package cargo
  :ensure t
  :diminish (cargo-minor-mode . "crgo")
  :defer t)

(use-package company
  :ensure t
  :diminish "cmpny"
  :defer t
  :init (setq annotations-company-tooltip-align t))

(use-package flycheck-rust
  :ensure t
  :defer t)

(use-package racer
  :ensure t
  :diminish (racer-mode . "rcr")
  :defer t
  :init (progn
          (setq racer-rust-src-path "~/code/rust/src/")
          (add-hook 'racer-mode-hook (lambda()
                                       (company-mode)
                                       (eldoc-mode)))))

(use-package rust-mode
  :ensure t
  :init
  (add-hook 'rust-mode-hook (lambda()
        		      (yas-reload-all)
        		      (yas-minor-mode)
                              (highlight-indentation-mode)
                              (cargo-minor-mode)
                              (flycheck-rust-setup)
                              (racer-mode)))
  :config (add-hook 'before-save-hook 'rust-format-buffer)
  :bind (:map rust-mode-map
	      ("<tab>" . company-indent-or-complete-common)))

(provide 'rust-settings)
;;; rust-settings.symlink ends here
