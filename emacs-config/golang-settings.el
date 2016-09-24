;;; -*- mode: emacs-lisp; -*-

(use-package go-eldoc
  :ensure t)

(use-package go-autocomplete
  :ensure t)

(use-package go-mode
  :ensure t
  :config
  (progn (setq tab-width 2)
	 (add-hook 'before-save-hook 'gofmt-before-save)
	 (go-eldoc-setup))
  :bind (:map (go-mode-map
	       ("C-c f" . gofmt)
	       ("C-c C-k" . godoc-at-point)
	       ("C-c C-r" . go-remove-unused-imports)
	       ("C-c C-g" . go-goto-imports)
	       ("M-." . godef-jump))))

(provide 'golang-settings)
;;; golang-settings.el ends here
