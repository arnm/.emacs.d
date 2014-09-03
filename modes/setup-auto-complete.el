(require 'auto-complete-config)

(setq ac-auto-show-menu t)
(setq ac-auto-start t)
(setq ac-quick-help-delay 0.3)
(setq ac-quick-help-height 30)
(setq ac-show-menu-immediately-on-auto-complete t)

;; setup and turn on `auto-complete-mode` for various major modes
(ac-config-default)

;; resetting ac-sources
(setq-default ac-sources '(ac-source-yasnippet
                           ac-source-abbrev
                           ac-source-dictionary
                           ac-source-words-in-same-mode-buffers))

(provide 'setup-auto-complete)
