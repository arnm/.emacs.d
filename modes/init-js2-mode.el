(require-package 'js2-mode)

(after 'js2-mode
  (when (executable-find "tern")
    (require-package 'tern)
    (add-hook 'js2-mode-hook 'tern-mode)
    (after 'tern
      (after 'auto-complete
	(require-package 'tern-auto-complete)
	(tern-ac-setup))
      (after 'company-mode
	(require-package 'company-tern)))))

(provide 'init-js2-mode)
