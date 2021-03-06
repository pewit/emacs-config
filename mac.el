;; Some OSX specific settings

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(setq mac-pass-command-to-system nil)

(global-set-key (kbd "M-q") 'save-buffers-kill-emacs)

(setenv "PATH"
        (concat
         "/usr/local/bin" ":"
         (getenv "PATH")
         )
        )

(setq exec-path (append '("/usr/local/bin") exec-path ))

(provide 'mac)

