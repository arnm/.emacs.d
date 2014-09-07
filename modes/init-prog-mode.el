(add-hook
 'prog-mode-hook
 (lambda ()
   (require-package 'rainbow-delimiters)
   (require 'rainbow-delimiters)
   (rainbow-delimiters-mode)
   (define-key global-map (kbd "RET") 'newline-and-indent)))

(provide 'init-prog-mode)
