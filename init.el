(setq el-get-package-directory "~/.emacs.d/el-get")
(setq-default el-get-user-package-directory "~/.emacs.d/init")

(add-to-list 'load-path (concat el-get-package-directory "/el-get"))

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get)
  (el-get 'sync))

(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
(el-get-read-all-recipes)

(el-get 'sync 'arnm)
