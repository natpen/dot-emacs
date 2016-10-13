;;; -*- mode: emacs-lisp; -*-

(use-package go-eldoc
  :ensure t
  :defer t)

(use-package go-autocomplete
  :ensure t)

(use-package go-mode
  :ensure t
  :init
  (progn
    (defun go-set-tab-width ()
      "Set the tab width."
      (setq-local tab-width 2))
    (add-hook 'go-mode-hook 'go-set-tab-width)
    (add-hook 'go-mode-hook (lambda()
			      (yas-reload-all)
			      (yas-minor-mode))))
  :config
  (progn
    (go-eldoc-setup)
    (add-hook 'before-save-hook 'gofmt-before-save))
  :bind
  (:map go-mode-map
	("C-c f" . gofmt)
	("C-c C-k" . godoc-at-point)
	("C-c C-r" . go-remove-unused-imports)
	("C-c C-g" . go-goto-imports)
	("M-." . godef-jump)))

(provide 'golang-settings)
;;; golang-settings.el ends here
