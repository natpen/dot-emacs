;;; -*- mode: emacs-lisp; -*-

(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

;; TODO: review performance implications this hook after using for a while.
(add-hook 'after-save-hook 'magit-after-save-refresh-status)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(provide 'magit-init)
;;; magit-init.symlink ends here
