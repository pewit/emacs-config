;; Set dotfiles-dir (.emacs.d) var
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

;; add .emacs.d to load path
(add-to-list 'load-path dotfiles-dir)


(require 'functions)

;;Yasnippets
(vendor 'yasnippet)
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "snippets"))

(vendor 'scala-mode)
(require 'scala-mode-auto)

(vendor 'smex)
(require 'smex)
(add-hook 'after-init-hook 'smex-initialize)

(vendor 'auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)


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


;; Load key bingings
;(load (concat dotfiles-dir "bindings.el"))


(provide 'init)
