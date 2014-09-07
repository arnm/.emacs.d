(add-hook
 'org-load-hook
 (lambda ()
   (setq org-use-fast-todo-selection t)
   (setq org-completion-use-ido t)
   (setq org-log-done t)))

(require 'evil-org)

(provide 'init-org-mode)
