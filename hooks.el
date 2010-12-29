

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


(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (yas/minor-mode-on)
             (local-set-key (kbd "M-r") 'eval-region)
             (setq ac-auto-start nil)
             (auto-complete-mode t)
             (ac-set-trigger-key "TAB")
             (local-set-key (kbd "C-SPC") 'auto-complete)
             (set-pairs '("(" "{" "[" "\""))

             ))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (yas/minor-mode-on)
             (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)
             (local-set-key (kbd "C-c C-c") 'senny-ruby-compilation-this-buffer)
             (set-pairs '("(" "{" "[" "\"" "\'" "|"))
             (setq ac-auto-start nil)
             (auto-complete-mode t)
             (ac-set-trigger-key "TAB")
             (local-set-key (kbd "C-SPC") 'auto-complete)
             ))



(provide 'hooks)
