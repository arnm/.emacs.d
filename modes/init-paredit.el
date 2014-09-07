(defun my-paredit-mode () 
  (require-package 'paredit)
  (require 'paredit)
  (paredit-mode t))

(add-hook 'emacs-lisp-mode-hook       'my-paredit-mode)
(add-hook 'lisp-mode-hook             'my-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'my-paredit-mode)
(add-hook 'scheme-mode-hook           'my-paredit-mode)
(add-hook 'clojure-mode-hook          'my-paredit-mode)
(add-hook 'cider-repl-mode-hook       'my-paredit-mode)
(add-hook 'sibiliant-mode-hook        'my-paredit-mode)

(provide 'init-paredit)
