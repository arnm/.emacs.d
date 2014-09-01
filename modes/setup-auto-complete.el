(require 'auto-complete-config)

(global-auto-complete-mode t)

(setq ac-delay 0.0)
(setq ac-quick-help-delay 0.5)

;; setup and turn on `auto-complete-mode` for various major modes
(ac-config-default)

;; resetting ac-sources
(setq-default ac-sources '(ac-source-yasnippet
                           ac-source-abbrev
                           ac-source-dictionary
                           ac-source-words-in-same-mode-buffers))

(provide 'setup-auto-complete)