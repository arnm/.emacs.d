(require 'fill-column-indicator)
(require 'color-theme-tomorrow)
(require 'powerline)

;; keep custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; empty scratch buffer on start up
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "*scratch*"))
(delete-other-windows)

;; disable stupid bell noise
(setq ring-bell-function 'ignore)

;(color-theme-tomorrow)
;(color-theme-tomorrow-night)
;(color-theme-tomorrow-night-bright)
;(color-theme-tomorrow-night-eighties)
(load-theme 'ujelly)

;; minor mode for global fill column
(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)))

(global-fci-mode 1)
(show-paren-mode 1)
(global-hl-line-mode 1)
(powerline-center-evil-theme)

(provide 'setup-apperance)
