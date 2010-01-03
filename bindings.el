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

;; Movements

; Move between windows with shift+arrows
; (windmove-default-keybindings)
(windmove-default-keybindings 'meta)

; Backward Char
(global-set-key (kbd "M-j") 'backward-char)

; Forward Char
(global-set-key (kbd "M-l") 'forward-char)

; Previouse Line
(global-set-key (kbd "M-i") 'previous-line)

; Next Line
(global-set-key (kbd "M-k") 'next-line)

; Beginnig of line
(global-set-key (kbd "M-u") 'beginning-of-line)
(global-set-key (kbd "<home>") 'beginning-of-line)


; End of line
(global-set-key (kbd "M-o") 'end-of-line)
(global-set-key (kbd "<end>") 'end-of-line)

; Backward word
(global-set-key (kbd "M-J") 'backward-word)

; Forward word
(global-set-key (kbd "M-L") 'forward-word)

; Backward Paragraph
(global-set-key (kbd "M-I") 'backward-paragraph)

; Forward Paragraph
(global-set-key (kbd "M-K") 'forward-paragraph)

; Beginning of buffer
(global-set-key (kbd "M-U") 'beginning-of-buffer)
(global-set-key (kbd "C-<home>") 'beginning-of-buffer)

; End of Buffer
(global-set-key (kbd "M-O") 'end-of-buffer)
(global-set-key (kbd "C-<end>") 'end-of-buffer)


;;Editing

; Delete Char
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "<delete>") 'delete-char)
(global-set-key (kbd "<kp-delete>") 'delete-char)

; delete-backward-char
(global-set-key (kbd "M-d") 'delete-backward-char)

; Kill Word
(global-set-key (kbd "M-r") 'kill-word)
(global-set-key (kbd "C-<delete>") 'kill-word)
(global-set-key (kbd "C-<kp-delete>") 'kill-word)

; Backward-kill-word
(global-set-key (kbd "M-e") 'backward-kill-word)
(global-set-key (kbd "C-<backspace>") 'backward-kill-word)

; Undo - Redo
(global-set-key (kbd "M-y") 'undo)
(global-set-key (kbd "C-z") 'undo)

; Mark all
(global-set-key (kbd "C-a") 'mark-whole-buffer)


;; Copy, Cut, Paste

; Kill region (cut)
(global-set-key (kbd "C-x") 'kill-region)

; Kill Ring Save (copy)
(global-set-key (kbd "C-c") 'kill-ring-save)

; Yank (paste)
(global-set-key (kbd "C-v") 'yank)


;; File Management

; Open File
(global-set-key (kbd "C-o") 'find-file)

; Save As
(global-set-key (kbd "C-S") 'write-file)

; Save File
(global-set-key (kbd "C-s") 'save-buffer)


;; Emacs stuff

; Set Mark
(global-set-key (kbd "M-SPC") 'set-mark-command)

; Switch to buffer
(global-set-key (kbd "M-b") 'switch-to-buffer)

; Buffer menu
(global-set-key (kbd "M-B") 'buffer-menu)

; Delete window
(global-set-key (kbd "M-w") 'delete-window)

; Kill Buffer
(global-set-key (kbd "M-W") 'kill-buffer)

; Window Management
(global-set-key (kbd "M-1") 'split-window-vertically)
(global-set-key (kbd "M-2") 'split-window-horizontally)
 
; Window resizing
(global-set-key (kbd "M-3") 'enlarge-window)
(global-set-key (kbd "M-4") 'shrink-window)
(global-set-key (kbd "M-5") 'enlarge-window-horizontally)
(global-set-key (kbd "M-6") 'shrink-window-horizontally)

; Execute Command
(global-set-key (kbd "M-x") 'execute-extended-command)

(global-set-key (kbd "M-A") 'smex-major-mode-commands)
(global-set-key (kbd "M-a") 'smex)


; Searching
(global-set-key (kbd "C-f") 'isearch-forward)




(provide 'bindings)








