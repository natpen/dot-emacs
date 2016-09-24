;;; -*- mode: emacs-lisp; -*-

;; (require 'magit-gh-pulls)
;; (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

(use-package magit
	     :diminish
	     :init
	     (progn
	       (use-package magit-blame)
	       (bind-key "C-c C-a" 'magit-just-amend magit-mode-map))
	     :config
	     (progn
	       (setq magit-completing-read-function 'magit-ido-completing-read)
	       (setq magit-branch-arguments nil)
	       (add-hook 'after-save-hook 'magit-after-save-refresh-status))
	     :bind
	     (("C-x g" . magit-status)
	      ("C-x M-g" . magit-dispatch-popup)))


(provide 'magit-init)
;;; magit-init.el ends here
