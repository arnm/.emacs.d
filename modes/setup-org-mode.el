(add-hook
 'org-load-hook
 (lambda ()
   (setq org-startup-indented t)
   (setq org-use-fast-todo-selection t)
   (setq org-completion-use-ido t)
   (setq org-log-done t)))

;; (require 'evil-org)

(provide 'setup-org-mode)
