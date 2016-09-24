;;; -*- mode: emacs-lisp; -*-

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init (projectile-global-mode t)
  :config
  (progn
    (setq projectile-keymap-prefix (kbd "C-c p"))
    (setq projectile-enable-caching t)
    (setq projectile-require-project-root nil)
    (setq projectile-completion-system 'ido)
    (add-to-list 'projectile-globally-ignored-files ".DS_Store")
    (add-to-list 'projectile-globally-ignored-files "node_modules")))

(provide 'projectile-init)
;;; projectile-init.el ends here
