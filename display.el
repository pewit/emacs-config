(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))


(vendor 'color-theme)
(color-theme-initialize)
(color-theme-taming-mr-arneson)


(set-frame-parameter (selected-frame) 'alpha '(97 80))
(add-to-list 'default-frame-alist '(alpha 97 80))

(provide 'display)