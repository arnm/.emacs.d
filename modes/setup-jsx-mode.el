(require 'jsx-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX Mode" t)

(provide 'setup-jsx-mode)
