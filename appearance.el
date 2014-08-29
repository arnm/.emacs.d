(require 'fill-column-indicator)
;; keep custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'color-theme-tomorrow)

;; empty scratch buffer on start up
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "*scratch*"))
(delete-other-windows)

;; disable stupid bell noise
(setq ring-bell-function 'ignore)

;(color-theme-tomorrow)
;(color-theme-tomorrow-night-bright)
(color-theme-tomorrow-night-eighties)

(define-globalized-minor-mode global-fci-mode
  fci-mode (lambda () (fci-mode 1)))

(global-fci-mode 1)
(show-paren-mode 1)
(global-hl-line-mode 1)

(provide 'appearance)
