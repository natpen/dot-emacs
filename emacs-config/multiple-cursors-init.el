;;; -*- mode: emacs-lisp; -*-

(use-package multiple-cursors
  :ensure t
  :bind (("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-S-c C-S-c" . mc/edit-lines)
         ("C-c C-<" . mc/mark-all-like-this)))

(provide 'multiple-cursors-init)
;;; multiple-cursors-init.symlink ends here
