;; path setup
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq default-directory (concat (getenv "HOME") "/"))

;; Add external project to load path
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Configure load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; keep custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'setup-package)

(require 'appearance)

;; Install packages if they're missing
(defun init-install-packages ()
  (packages-install
   '(color-theme-sanityinc-tomorrow
     evil
     evil-leader
     yasnippet
     magit
     nyan-mode
     python-environment
     jedi
     emmet-mode
     js2-mode
     js2-refactor
     clojure-mode
     cider)))

(condition-case nil
    (init-install-packages)
  (error
   (package-refresh-contents)
   (init-install-packages)))

;; System setup
(require 'setup-nyan-mode)
(require 'setup-evil-mode)
(require 'setup-ido-mode)
(require 'setup-auto-complete-mode)
(eval-after-load 'magit '(require 'setup-magit))

;; Language specific setups
(require 'setup-python-mode)
(require 'setup-clojure-mode)
(require 'setup-emmet-mode)
(require 'setup-js2-mode)
