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


(provide 'functions)