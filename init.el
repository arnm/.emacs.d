;; path setup
(setq exec-path
      (append (split-string-and-unquote (getenv "PATH") " ")
	      exec-path))

;; Load paths
(setq config (expand-file-name "config" user-emacs-directory))
(setq vendor (expand-file-name "vendor" user-emacs-directory))
(setq modes (expand-file-name "modes" user-emacs-directory))

;; Add load paths
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path config)
(add-to-list 'load-path vendor)
(add-to-list 'load-path modes)

;; Add external projects to load path
(dolist (project (directory-files vendor t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(setq backup-inhibited t)
(setq auto-save-default nil)

(require 'setup-package)

;; Install packages if they're missing
(packages-install
 '(ace-jump-mode
   auto-complete
   autopair
   cider
   clojure-mode
   ;;coffee-mode
   ;;company-go
   emmet-mode
   evil
   evil-leader
   expand-region
   fill-column-indicator
   fish-mode
   flx-ido
   ;;flycheck
   git-gutter
   ;;go-mode
   ;;jedi
   js2-mode
   js2-refactor
   jsx-mode
   key-chord
   magit
   markdown-mode
   multiple-cursors
   nyan-mode
   paredit
   powerline
   projectile
   ;;python-environment
   rainbow-delimiters
   ;;rust-mode
   smex
   yaml-mode
   yasnippet))

(require 'setup-custom)
(require 'setup-apperance)
(require 'setup-global-bindings)

;; System setup
(require 'setup-yasnippet)
(require 'setup-auto-complete)
(require 'setup-autopair)
(require 'setup-evil)
(require 'setup-expand-region)
(require 'setup-flx-ido)
(require 'setup-git-gutter)
(require 'setup-magit)
(require 'setup-multiple-cursors)
(require 'setup-nyan-mode)
(require 'setup-paredit)
(require 'setup-projectile)

;; Language specific setups
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'setup-js2-mode)
(require 'setup-jsx-mode)
(require 'setup-emmet-mode)
(require 'setup-clojure-mode)
;; (require 'setup-rust-mode)
;; (require 'setup-go-mode)
(require 'setup-eldoc)
