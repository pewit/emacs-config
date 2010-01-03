

(add-hook 'scala-mode-hook
	'(lambda ()
	     (yas/minor-mode-on)
	     (local-set-key (kbd "RET") 'newline-and-indent)
	     (set-pairs '("(" "{" "[" "\"" "\'"))
	     (setq ac-sources '(ac-source-words-in-same-mode-buffers))
	     (setq ac-auto-start nil)
	     (auto-complete-mode t)
	     (local-set-key (kbd "C-SPC") 'auto-complete)
))

(add-hook 'nxml-mode-hook
	'(lambda ()
	     (yas/minor-mode-on)
	     (local-set-key (kbd "C-SPC") 'nxml-complete)
))



(provide 'hooks)