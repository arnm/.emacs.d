;; empty scratch buffer on start up
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "*scratch*"))
(delete-other-windows)

;; theme
(load-theme 'sanityinc-tomorrow-bright)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Highlight current line
;; (global-hl-line-mode 1)

(provide 'appearance)
