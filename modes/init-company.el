(require-package 'company)
(require 'company)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(setq company-tooltip-limit 20)

(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case nil)

(setq company-global-modes
      '(not eshell-mode comint-mode org-mode))

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
