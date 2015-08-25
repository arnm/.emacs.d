(:name arnm-theme
       :type builtin
       :depends (arnm-custom
                 base16)
       :after (progn
                (show-paren-mode)
                (setq show-paren-delay 0)
                (line-number-mode t)
                (setq inhibit-splash-screen t)

                (load-theme 'base16-bright-dark)))
