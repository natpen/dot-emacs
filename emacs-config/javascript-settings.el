;;; -*- mode: emacs-lisp; -*-

;; (use-package 'json-mode
;;   :ensure t
;;   :init (progn
;; 	  (setq 'json-reformat:indent-width 2)
;; 	  (setq 'json-reformat:pretty-string? t)))

;; (use-package 'js2-mode
;;   :ensure t)

;; (use-package 'js2-refactor
;;   :ensure t)

(add-hook 'js-mode-hook
	  (lambda ()
	    ;; (use-package jsfmt
	      ;; :ensure t
	      ;; :init
	      ;; (add-hook 'before-save-hook 'jsfmt-before-save))
	    (highlight-indentation-mode)
	    (setq indent-tabs-mode nil)
	    (setq tab-width 2)
	    (setq js-indent-level 2)))

(provide 'javascript-settings)
;;; javascript-settings.el ends here
