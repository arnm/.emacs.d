(add-hook
 'prog-mode-hook
 (lambda ()
   (rainbow-delimiters-mode)

   (define-key global-map (kbd "RET") 'newline-and-indent)))

(provide 'setup-prog-mode)
