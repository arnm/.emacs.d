(arnm/lazy-major-mode "\\.js$" js2-mode)

(after 'js2-mode
  (require-package 'tern)
  (add-hook 'js2-mode-hook 'tern-mode)
  (after 'tern
    (require-package 'company-tern)
    (add-to-list 'company-backends 'company-tern)))

(provide 'init-js2-mode)
