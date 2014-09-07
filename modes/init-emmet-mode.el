(require-package 'emmet-mode)

(defun my-emmet-mode ()
  (require-package 'emmet-mode)
  (emmet-mode))

(add-hook 'html-mode-hook 'my-emmet-mode)
(add-hook 'css-mode-hook 'my-emmet-mode)

(provide 'init-emmet-mode)
