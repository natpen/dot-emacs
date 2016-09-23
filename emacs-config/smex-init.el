;;; -*- mode: emacs-lisp; -*-

;; (smex-initialize)

;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind ("M-x" . smex))

(provide 'smex-init)
;;; smex-init.symlink ends here
