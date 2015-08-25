(when (executable-find "ag")
  (arnm/package/install 'ag)
  (setq ag-highlight-search t))

(arnm/package/install 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(arnm/package/install 'f)
(require 'f)

;; (arnm/package/install 'el-get)
;; (require 'el-get)

(provide 'arnm-env)
