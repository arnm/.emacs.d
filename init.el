;; path setup
(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append (split-string-and-unquote path ":")
		exec-path)))

;; Load paths
(setq config (expand-file-name "config" user-emacs-directory))
(setq site-lisp (expand-file-name "site-lisp" user-emacs-directory))
(setq modes (expand-file-name "modes" user-emacs-directory))

;; Add load paths
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path config)
(add-to-list 'load-path site-lisp)
(add-to-list 'load-path modes)

;; Add external projects to load path
(dolist (project (directory-files site-lisp t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'setup-package)

;; Install packages if they're missing
(packages-install
   '(auto-complete
     autopair
     cider
     clojure-mode
     ;coffee-mode
     ;company-go
     ;emmet-mode
     evil
     evil-leader
     expand-region
     fill-column-indicator
     ;flycheck
     git-gutter
     ;go-mode
     ;jedi
     ;js2-mode
     ;js2-refactor
     key-chord
     magit
     markdown-mode
     multiple-cursors
     nyan-mode
     paredit
     powerline
     projectile
     ;python-environment
     rainbow-delimiters
     ;rust-mode
     yaml-mode
     yasnippet))

(require 'appearance)
(require 'global-key-maps)

;; System setup

(require 'setup-auto-complete)
(require 'setup-autopair)
(require 'setup-evil)
(require 'setup-expand-region)
(require 'setup-git-gutter)
(require 'setup-ido)
(require 'setup-magit)
(require 'setup-multiple-cursors)
(require 'setup-nyan-mode)
(require 'setup-paredit)
(require 'setup-projectile)
(require 'setup-yasnippet)

;; Language specific setups

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

; (require 'setup-js2-mode)
; (require 'setup-emmet-mode)
(require 'setup-clojure-mode)
; (require 'setup-rust-mode)
; (require 'setup-go-mode)

