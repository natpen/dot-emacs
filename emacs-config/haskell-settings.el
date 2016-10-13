;;; -*- mode: emacs-lisp; -*-

(use-package flycheck-haskell
  :ensure t
  :defer t)

(use-package haskell-mode
  :ensure t
  :defer t
  :init
  (lambda()
    (yas-reload-all)
    (yas-minor-mode)))

(provide 'haskell-settings)
;;; haskell-settings.el ends here
