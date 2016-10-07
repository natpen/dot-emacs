;;; -*- mode: emacs-lisp; -*-

;; (use-package web-mode
;;   :mode ("\\.html?\\'" "\\.jsx$")
;;   :ensure t
;;   :init (progn
;; 	  (setq 'web-mode-markup-indent-offset 2)
;; 	  (setq 'web-mode-css-indent-offset 2)
;; 	  (setq 'web-mode-code-indent-offset 2)))

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;;   (if (equal web-mode-content-type "jsx")
;;     (let ((web-mode-enable-part-face nil))
;;       ad-do-it)
;;     ad-do-it))

(provide 'web-mode-settings)
;;; web-mode-settings.el ends here
