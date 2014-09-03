(require 'yasnippet)

(add-hook 'clojure-mode-hook (lambda () (yas-minor-mode)))

(setq yas-snippet-dir "~/.emacs.d/snippets")
(yas-load-directory yas-snippet-dir)

(provide 'setup-yasnippet)
