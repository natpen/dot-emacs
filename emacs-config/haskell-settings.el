;;; -*- mode: emacs-lisp; -*-

(use-package flycheck-haskell
  :ensure t
  :defer)

(use-package haskell-mode
  :ensure t
  :defer
  :init
  (lambda()
    (yas-reload-all)
    (yas-minor-mode)))

(provide 'haskell-settings)
;;; haskell-settings.el ends here
