;;; -*- mode: emacs-lisp; -*-

(use-package jsfmt
  :ensure t
  :defer t)

(use-package ac-js2
  :ensure t
  :defer t
  :config
  (setq ac-js2-evaluate-calls t))

(use-package js2-refactor
  :ensure t
  :diminish js2-refactor-mode
  :defer t)

(use-package js2-mode
  :ensure t
  :mode ("\\.js\\'" "\\.json\\'")
  :init
  (add-hook 'js2-mode-hook (lambda()
			     (yas-reload-all)
			     (yas-minor-mode)
			     (js2-refactor-mode)
			     (ac-js2-mode)))
  :config
  (progn
    (setq js2-basic-offset 2)
    (setq js2-highlight-level 3)
    (setq js2-highlight-external-variables nil)
    (setq js2-strict-missing-semi-warning nil)
    ;; (add-hook 'before-save-hook 'jsfmt-before-save)
    (highlight-indentation-mode)
    (rename-modeline "js2-mode" js2-mode "JS2")))

(provide 'javascript-settings)
;;; javascript-settings.el ends here
