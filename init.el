;; path init
(setq exec-path
      (append (split-string-and-unquote (getenv "PATH") " ")
	      exec-path))

(setq custom (concat user-emacs-directory "custom.el"))
(load custom)

(setq vendor (concat user-emacs-directory "vendor"))
(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'load-path (concat user-emacs-directory "modes"))
(add-to-list 'load-path vendor)

;; Also load the directories in vendor
(dolist (project (directory-files vendor t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(setq backup-inhibited t)
(setq auto-save-default nil)

(require 'init-util)
(require 'init-package)

(require 'init-custom)
(require 'init-apperance)

(require 'init-yasnippet)
;; (require 'init-auto-complete)
(require 'init-autopair)
(require 'init-company)
(require 'init-evil)
(require 'init-bindings)
(require 'init-expand-region)
(require 'init-flx-ido)
(require 'init-git-gutter)
(require 'init-magit)
(require 'init-multiple-cursors)
;; (require 'init-nyan-mode)
(require 'init-org-mode)
(require 'init-paredit)
(require 'init-projectile)

;; Language specific inits
(require 'init-prog-mode)
;; (require 'init-js2-mode)
;; (require 'init-jsx-mode)
(require 'init-emmet-mode)
(require 'init-clojure-mode)
(require 'init-rust-mode)
;; (require 'init-go-mode)
(require 'init-eldoc)
