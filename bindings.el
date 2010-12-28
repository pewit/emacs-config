;; Unset keys


(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "M-j"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "M-l"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "M-i"))
(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "C-a"))
(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "C-e"))
(global-unset-key (kbd "M-o"))
(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "M-J"))
(global-unset-key (kbd "M-f"))
(global-unset-key (kbd "M-L"))
(global-unset-key (kbd "M-I"))
(global-unset-key (kbd "M-K"))
(global-unset-key (kbd "M-<"))
(global-unset-key (kbd "M-U"))
(global-unset-key (kbd "M->"))
(global-unset-key (kbd "M-O"))
(global-unset-key (kbd "C-d"))
(global-unset-key (kbd "M-f"))
(global-unset-key (kbd "<delete>"))
(global-unset-key (kbd "M-r"))
(global-unset-key (kbd "C-x h"))
(global-unset-key (kbd "C-a"))
(global-unset-key (kbd "C-w"))
(global-unset-key (kbd "C-x"))
(global-unset-key (kbd "M-w"))
(global-unset-key (kbd "C-c"))
(global-unset-key (kbd "C-y"))
(global-unset-key (kbd "M-x"))
(global-unset-key (kbd "C-SPC"))
(global-unset-key (kbd "C-o"))
(global-unset-key (kbd "C-s"))
(global-unset-key (kbd "C-S"))
(global-unset-key (kbd "M-d"))

;; Movements

;;Beginnig of line
(global-set-key (kbd "M-<left>") 'beginning-of-line)

;; End of line
(global-set-key (kbd "M-<right>") 'end-of-line)

;; Beginning of buffer
(global-set-key (kbd "M-<up>") 'beginning-of-buffer)

;; End of Buffer
(global-set-key (kbd "M-<down>") 'end-of-buffer)

;;delete
(global-set-key (kbd "<kp-delete>") 'delete-char)

;;delete word
(global-set-key (kbd "C-<backspace>") 'defunkt-backward-kill-word)

(global-set-key (kbd "C-<kp-delete>") 'defunkt-kill-word)


;; Undo - Redo
(global-set-key (kbd "M-y") 'undo)
(global-set-key (kbd "M-z") 'undo)

;; Mark all
(global-set-key (kbd "M-a") 'mark-whole-buffer)

;; Mark line
(global-set-key (kbd "C-M-S-<left>") 'mark-lines-previous-line)
(global-set-key (kbd "C-M-S-<right>") 'mark-lines-next-line)


;; Move between windows with shift+arrows
;; (windmove-default-keybindings 'meta)
(global-set-key (kbd "M-o") 'select-previous-window)
(global-set-key (kbd "M-p") 'select-next-window)
(global-set-key (kbd "C-o") 'select-previous-window)
(global-set-key (kbd "C-p") 'select-next-window)


;;buffer movement
(global-set-key (kbd "C-ä") 'backward-buffer)
(global-set-key (kbd "C-$") 'forward-buffer)
(global-set-key (kbd "M-ä") 'backward-buffer)
(global-set-key (kbd "M-$") 'forward-buffer)


;; Copy, Cut, Paste

;; Kill region (cut)
(global-set-key (kbd "M-x") 'kill-region)

;; Kill Ring Save (copy)
(global-set-key (kbd "M-c") 'kill-ring-save)

;; Yank (paste)
(global-set-key (kbd "M-v") 'yank)


;; File Management

;; Open File
(global-set-key (kbd "M-o") 'find-file)

;; Save As
(global-set-key (kbd "M-S") 'write-file)

;; Save File
(global-set-key (kbd "M-s") 'save-buffer)


;; Emacs stuff

;; Set Mark
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; Switch to buffer
(global-set-key (kbd "M-b") 'switch-to-buffer)

;; Buffer menu
(global-set-key (kbd "M-B") 'buffer-menu)

;; Delete window
(global-set-key (kbd "M-w") 'delete-window)

;; delete-other-windows
(global-set-key (kbd "C-<return>") 'delete-other-windows)


;; Kill Buffer
(global-set-key (kbd "M-W") 'kill-buffer)

;; Window Management
(global-set-key (kbd "M-1") 'split-window-vertically)
(global-set-key (kbd "M-2") 'split-window-horizontally)

;; Window resizing
(global-set-key (kbd "M-3") 'enlarge-window)
(global-set-key (kbd "M-4") 'shrink-window)
(global-set-key (kbd "M-5") 'enlarge-window-horizontally)
(global-set-key (kbd "M-6") 'shrink-window-horizontally)

;; Execute Command
(global-set-key (kbd "C-x") 'execute-extended-command)
(global-set-key (kbd "C-a") 'execute-extended-command)
(global-set-key (kbd "C-q") 'keyboard-quit)


;; Searching
(global-set-key (kbd "M-f") 'isearch-forward)
(global-set-key (kbd "M-F") 'isearch-backward)
(add-hook 'isearch-mode-hook
          (lambda ()
            (define-key isearch-mode-map (kbd "M-f") 'isearch-repeat-forward)
            (define-key isearch-mode-map (kbd "M-F") 'isearch-repeat-backward)
            )
          )

;;Formating
(global-set-key (kbd "C-S-f") 'indent-whole-buffer)

;;Commenting
(global-set-key (kbd "C-S-c") 'comment-or-uncomment-region)

;;Font-Size
(global-set-key (kbd "M-+") 'sacha/increase-font-size)
(global-set-key (kbd "M--") 'sacha/decrease-font-size)

(provide 'bindings)








