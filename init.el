;; Set dotfiles-dir (.emacs.d) var
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

;; add .emacs.d to load path
(add-to-list 'load-path dotfiles-dir)


(require 'functions)

;;Yasnippets
(vendor 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "snippets"))


;;Flymake ruby
(vendor 'flymake-ruby)
(require 'flymake-ruby)

;Line numbering
(vendor 'linum)
(require 'linum)

;;Auto-completet
(vendor 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat dotfiles-dir "vendor/auto-complete/ac-dict"))
(ac-config-default)
(setq ac-auto-start nil)


(require 'bindings)



;; OS specific settings
(cond 
  ((string-match "nt" system-configuration) 
 	(require 'windows)
  )
  ((string-match "apple" system-configuration)
    (require 'mac)
))


(require 'misc)
(require 'display)
(require 'hooks)


(provide 'init)
