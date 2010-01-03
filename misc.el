;; highlight the selected region
(transient-mark-mode 1)
 
;; Delete the region when typing
(delete-selection-mode 1)
 
;; highlight
(show-paren-mode 1)
 
;; Use a vertical bar as cursor
(blink-cursor-mode 1)
(setq-default cursor-type '(bar . 2))

(setq color-theme-is-global t)

(setq shift-select-mode t)

(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)


(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point 'guess
        ido-max-prospects 10))


;; Display ido horizontaly
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))




(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

;; Platform-specific stuff
(when (eq system-type 'darwin)
  ;; Work around a bug on OS X where system-name is FQDN
  (setq system-name (car (split-string system-name "\\."))))
 
;; make emacs use the clipboard
(setq x-select-enable-clipboard t)

(provide 'misc)