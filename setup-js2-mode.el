(require 'js2-mode)

;; ternjs setup
(add-to-list 'load-path (expand-file-name "tern/emacs" site-lisp-dir))
(autoload 'tern-mode "tern.el" nil t)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'auto-complete
  '(eval-after-load 'tern
     '(progn
        (require 'tern-auto-complete)
        (tern-ac-setup))))

;; indentation
(setq-default js2-indent-on-enter-key t)
(setq-default js2-auto-indent-p t)

(provide 'setup-js2-mode)
