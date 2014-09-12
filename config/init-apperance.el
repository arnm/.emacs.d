(setq show-paren-delay 0)
(show-paren-mode)
(global-hl-line-mode 1)

;; (require-package 'diminish)
;; (after 'autopair (diminish 'autopair-mode))
;; (after 'company (diminish 'company-mode))
;; (after 'eldoc (diminish 'eldoc-mode))
;; (after 'git-gutter (diminish 'git-gutter-mode))
;; (after 'paredit (diminish 'paredit-mode))
;; (after 'undo-tree (diminish 'undo-tree-mode))
;; (after 'yasnippet (diminish 'yas-minor-mode))

;; empty scratch buffer on start up
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "*scratch*"))
(delete-other-windows)

;; disable stupid bell noise
(setq ring-bell-function 'ignore)

(require 'color-theme-tomorrow)
;; (color-theme-tomorrow)
;(color-theme-tomorrow-night)
;(color-theme-tomorrow-night-bright)
;(color-theme-tomorrow-night-eighties)

(require-package 'ujelly-theme)
(load-theme 'ujelly)

(require-package 'fill-column-indicator)
(require 'fill-column-indicator)
;; minor mode for global fill column
(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

(require-package 'powerline)
(require 'powerline)
(powerline-center-evil-theme)

(provide 'init-apperance)
