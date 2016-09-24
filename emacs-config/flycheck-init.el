;;; -*- mode: emacs-lisp; -*-

(use-package flycheck
  :ensure t
  :diminish 'FC
  :config
  (progn
    (setq flycheck-display-errors-function nil)
    (add-hook 'after-init-hook 'global-flycheck-mode)))

(provide 'flycheck-init)
;;; flycheck-init.el ends here
