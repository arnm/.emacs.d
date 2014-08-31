(require 'yasnippet)

(add-hook 'clojure-mode-hook (lambda () (yas-minor-mode)))

(setq yas-snippet-dir "~/.emacs.d/snippets")
(yas-load-directory yas-snippet-dir)

;(setq yas-snippet-verbosity 1)
;(setq yas-wrap-around-region t)

(provide 'setup-yasnippet)
