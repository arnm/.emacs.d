(require 'yasnippet)

(add-hook 'prog-mode-hook 'yas-minor-mode)
(add-hook 'html-mode-hook 'yas-minor-mode)

(setq yas-also-auto-indent-first-line t)
(setq yas-prompt-functions '(yas/ido-prompt yas/completing-prompt))

(add-to-list 'yas-snippet-dirs
	     (concat user-emacs-directory "snippets"))

(yas-reload-all)

(provide 'setup-yasnippet)
