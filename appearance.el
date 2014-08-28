;; keep custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; empty scratch buffer on start up
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "*scratch*"))
(delete-other-windows)

;; disable stupid bell noise
(setq ring-bell-function 'ignore)

; set theme only when GUI is ran
; use terminal color scheme
(when (display-graphic-p)
    (require 'color-theme-tomorrow)
    (color-theme-tomorrow))

(show-paren-mode 1)
(global-hl-line-mode 1)

(provide 'appearance)
