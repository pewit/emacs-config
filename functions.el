;; Functions

; for loading libraries in from the vendor directory
(defun vendor (library)
  (let* ((file (symbol-name library)) 
         (normal (concat dotfiles-dir "vendor/" file)) 
         (suffix (concat normal ".el")))
    (cond 
     ((file-directory-p normal) (add-to-list 'load-path normal) (require library))
     ((file-directory-p suffix) (add-to-list 'load-path suffix) (require library))
     ((file-exists-p suffix) (require library)))))


(defun set-pairs (pairs)
  "Sets up handling of pair characters."
  (mapcar (lambda (pair)
            (local-set-key pair 'skeleton-pair-insert-maybe))
          ;; (cond ((string= pair "\"") (local-set-key pair 'move-over-dbl-quote))
          ;;       ((string= pair "\'") (local-set-key pair 'move-over-quote))
          ;;       ((string= pair "|") (local-set-key pair 'move-over-pipe))
          ;;       ((string= pair "[") (local-set-key "\]" 'move-over-square))
          ;;       ((string= pair "(") (local-set-key "\)" 'move-over-bracket))
          ;;       ((string= pair "{") (local-set-key "\}" 'move-over-curly))))
          pairs)
  (setq skeleton-pair t))

(defun backward-buffer () (interactive)
  "Switch to previously selected buffer."
  (let* ((list (cdr (buffer-list)))
         (buffer (car list)))
    (while (and (cdr list) (string-match "\\*" (buffer-name buffer)))
      (progn
        (setq list (cdr list))
        (setq buffer (car list))))
    (bury-buffer)
    (switch-to-buffer buffer)))

(defun forward-buffer () (interactive)
  "Opposite of backward-buffer."
  (let* ((list (reverse (buffer-list)))
         (buffer (car list)))
    (while (and (cdr list) (string-match "\\*" (buffer-name buffer)))
      (progn
        (setq list (cdr list))
        (setq buffer (car list))))
    (switch-to-buffer buffer)))

(defun eclipse-kill-word (repeat)
  "Redefine `backward-kill-word' to work as Eclipse does.

Now stops at the beginning of the line, deleting only whitespace."
  (interactive "p")
  (let (cnt)
    (dotimes (cnt repeat)
      (if (= (point) (save-excursion (beginning-of-line) (point)))
          (kill-region (point) (save-excursion (backward-word) (point)))
        (kill-region (point)
                                 (max (save-excursion (beginning-of-line) (point))
                                          (save-excursion (backward-word) (point))))))))


(provide 'functions)