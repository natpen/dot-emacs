;;; -*- mode: emacs-lisp; -*-

(use-package drag-stuff
  :ensure t
  :diminish drag-stuff-mode
  :init (progn
	  (setq drag-stuff-modifier '(meta shift))
	  (drag-stuff-global-mode 1)
	  (add-to-list 'drag-stuff-except-modes 'magit-mode)
	  (add-to-list 'drag-stuff-except-modes 'dired-mode)
	  ;; meta+shift as the drag-stuff modifier key is
	  ;; shadowing important org-mode keybindings
	  (add-to-list 'drag-stuff-except-modes 'org-mode)))

(provide 'drag-stuff-init)
;;; drag-stuff-init.el ends here
