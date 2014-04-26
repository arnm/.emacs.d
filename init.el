(add-to-list 'load-path user-emacs-directory)

;; Keep emacs custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'setup-package)

;; Install packages if they're missing
(defun init-install-packages ()
  (packages-install
   '(magit
     jedi
     js2-mode
     evil-mode
     clojure-mode
     cider)))

(condition-case nil
    (init-install-packages)
  (error
   (package-refresh-contents)
   (init-install-packages)))

;; System setup
(nyan-mode 1)
(require 'auto-complete)
(require 'setup-ido-mode)
(require 'setup-evil-mode)

;; Language specific setups
(eval-after-load 'js2-mode '(require 'setup-js2-mode))
(eval-after-load 'python-mode '(require 'setup-python-mode))
(eval-after-load 'clojure-mode '(require 'setup-clojure-mode))
(eval-after-load 'magit '(require 'setup-magit))

(require 'key-bindings)
