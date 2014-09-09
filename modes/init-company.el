(require-package 'company)
(require 'company)

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(setq company-tooltip-limit 20)
(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case nil)

(add-to-list 'company-backends 'company-yasnippet)
(add-to-list 'company-backends 'company-dabbrev-code)

(when (executable-find "tern")
  (after "company-tern-autoloads"
    (add-to-list 'company-backends 'company-tern)))

(setq company-global-modes
      '(not eshell-mode comint-mode org-mode))

(add-hook 'after-init-hook 'global-company-mode)

;; (defadvice company-complete-common (around advice-for-company-complete-common activate)
;;   (when (null (yas-expand))
;;     ad-do-it))

(provide 'init-company)
