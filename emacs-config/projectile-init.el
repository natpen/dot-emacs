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
    (setq projectile-switch-project-action 'magit-status)
    (setq projectile-ignored-project-function ignore-non-code-directories-projects)
    (add-to-list 'projectile-globally-ignored-files ".DS_Store")
    (add-to-list 'projectile-globally-ignored-files "node_modules")
    (add-to-list 'projectile-ignored-projects "~/.nvm")
    (add-to-list 'projectile-ignored-projects "~/Dropbox")
    (add-to-list 'projectile-ignored-projects "~/.emacs.d")))


(ignore-non-code-directories-projects "~/code/dotfiles")
(member "~/code/dotfiles" (list "~/code/"))

(defun ignore-non-code-directories-projects (project-root)
  "Return t if PROJECT-ROOT is not a member of a code directory"
  ;; (let code-directories (list "~/code/"))
  ;; (let a 5)
  (not (member project-root "~/code/"))
  ;; (mapcar member ))

(provide 'projectile-init)
;;; projectile-init.el ends here
