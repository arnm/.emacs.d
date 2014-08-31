(require 'paredit)

(defun turn-on-paredit () (paredit-mode t))

(add-hook 'emacs-lisp-mode-hook       'turn-on-paredit)
(add-hook 'lisp-mode-hook             'turn-on-paredit)
(add-hook 'lisp-interaction-mode-hook 'turn-on-paredit)
(add-hook 'scheme-mode-hook           'turn-on-paredit)
(add-hook 'clojure-mode-hook          'turn-on-paredit)
(add-hook 'cider-repl-mode-hook       'turn-on-paredit)
(add-hook 'sibiliant-mode-hook        'turn-on-paredit)

(provide 'setup-paredit)
