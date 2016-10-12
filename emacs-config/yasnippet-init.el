;;; -*- mode: emacs-lisp; -*-

;; Clone the following repo from ~/code/
;; https://github.com/AndreaCrotti/yasnippet-snippets

(use-package yasnippet
  :ensure t
  :init
  (if (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs "~/code/yasnippet-snippets")
    (setq yas-snippet-dirs (list "~/code/yasnippet-snippets"))))

(provide 'yasnippet-init)
;;; yasnippet-init.el ends here
