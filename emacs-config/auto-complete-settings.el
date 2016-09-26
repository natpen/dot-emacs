;;; -*- mode: emacs-lisp; -*-

(use-package auto-complete
  :ensure t
  :init
  (progn
    (require 'auto-complete-config)
    (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
    (ac-config-default)))

(provide 'auto-complete-settings)
;;; auto-complete-settings.el ends here
