;; js2-mode
(add-hook 'js-mode-hook 'js2-minor-mode)

;; ternjs
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(provide 'setup-js2-mode)
