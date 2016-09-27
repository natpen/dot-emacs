;;; -*- mode: emacs-lisp; -*-

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (setq which-key-key-replacement-alist
	'(("<\\([[:alnum:]-]+\\)>" . "\\1")
	  ("left"                  . "◀")
	  ("right"                 . "▶")
	  ("up"                    . "▲")
	  ("down"                  . "▼")
	  ("delete"                . "DEL")
	  ("next"                  . "PgDn")
	  ("prior"                 . "PgUp"))

	which-key-description-replacement-alist
	'(("Prefix Command" . "prefix")
	  ("\\`projectile-" . "𝓟/")
	  ("\\`flycheck-"   . "𝓕𝓒/")))
  (which-key-mode t))

(provide 'which-key-init)
;;; which-key-init.el ends here
