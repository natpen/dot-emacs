;;; -*- mode: emacs-lisp; -*-

;; go-autocomplete, go-eldoc, go-mode

(require 'go-autocomplete)

(add-hook 'go-mode-hook (lambda ()
			  ;;(setq highlight-indentation-mode t)
			  (setq tab-width 2)
			  (add-hook 'before-save-hook 'gofmt-before-save)
			  (go-eldoc-setup)))

(add-hook 'go-mode-hook (lambda ()
			  (local-set-key (kbd "C-c f") 'gofmt)
			  (local-set-key (kbd "C-c C-k") 'godoc-at-point)
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
			  (local-set-key (kbd "C-c C-g") 'go-goto-imports)
			  (local-set-key (kbd "M-.") 'godef-jump)))

(provide 'golang-settings)
;;; golang-settings.symlink ends here
