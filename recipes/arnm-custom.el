(:name arnm-custom
       :type git
       :url "https://gist.github.com/arnm/11359580"
       :after (progn
                (let ((custom (concat el-get-package-directory "/arnm-custom/custom.el")))
                  (when (file-exists-p custom)
                    (setq custom-file custom)
                    (load custom-file)))))
