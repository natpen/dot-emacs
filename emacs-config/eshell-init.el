;;; -*- mode: emacs-lisp; -*-

(use-package eshell
  :bind ("C-c n x" . eshell)
  :init
  (add-hook 'eshell-first-time-mode-hook
            (lambda ()
              (add-to-list 'eshell-visual-commands "htop")))
  :config
  (progn
    (setq eshell-history-size 5000)
    (setq eshell-save-history-on-exit t)))

(provide 'eshell-init)
;;; eshell-init.el ends here
