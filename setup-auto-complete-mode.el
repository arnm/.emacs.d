(require 'auto-complete-config)

(global-auto-complete-mode t)

(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))

;; setup and turn on `auto-complete-mode` for various major modes
(ac-config-default)

;; resetting ac-sources
(setq-default ac-sources '(
                           ac-source-yasnippet
                           ac-source-abbrev
                           ac-source-dictionary
                           ac-source-words-in-same-mode-buffers
                           ))

(provide 'setup-auto-complete-mode)
