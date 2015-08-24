;; load custom theme file
(defconst custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(show-paren-mode)
(setq show-paren-delay 0)

(line-number-mode t)
(setq inhibit-splash-screen t)

(arnm/package/require 'base16-theme)
(load-theme 'base16-ocean-dark)

(provide 'arnm-theme)
