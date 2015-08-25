(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-M-x-fuzzy-match t)
(setq helm-apropos-fuzzy-match t)
(setq helm-recentf-fuzzy-match t)
(setq helm-locate-fuzzy-match t)
(setq helm-file-cache-fuzzy-match t)
(setq helm-semantic-fuzzy-match t)
(setq helm-imenu-fuzzy-match t)
(setq helm-lisp-fuzzy-completion t)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)

(setq helm-input-idle-delay 0.02)
(setq helm-candidate-number-limit 10)

(arnm/package/install 'helm)

(arnm/util/after "projectile-autoloads"
  (arnm/package/install 'helm-projectile))

(arnm/util/after 'helm
  (setq helm-autoresize-min-height 20)
  (setq helm-autoresize-max-height 20)
  (helm-autoresize-mode t))

(helm-mode t)

(provide 'arnm-helm)
