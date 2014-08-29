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

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; Add external projects to load path
(dolist (project (directory-files site-lisp t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'setup-package)

;; Install packages if they're missing
(packages-install
   '(fill-column-indicator
     nyan-mode
     evil
     evil-leader
     key-chord
     projectile
     multiple-cursors
     expand-region
     paredit
     rainbow-delimiters
     autopair
     auto-complete
     yasnippet
     magit
     git-gutter
     ;flycheck
     ;go-mode
     ;company-go
     ;python-environment
     ;jedi
     ;emmet-mode
     markdown-mode
     yaml-mode
     ;js2-mode
     ;js2-refactor
     ;coffee-mode
     ;rust-mode
     clojure-mode
     cider))

(require 'appearance)
(require 'global-key-maps)

;; System setup
(require 'setup-projectile)
(require 'setup-nyan-mode)
(require 'setup-evil)
(require 'setup-ido)
(require 'setup-paredit)
(require 'setup-autopair)
(require 'setup-multiple-cursors)
(require 'setup-auto-complete)
(require 'setup-yasnippet)
(require 'setup-git-gutter)
(eval-after-load 'magit '(require 'setup-magit))

;; Language specific setups

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

; (require 'setup-js2-mode)
; (require 'setup-emmet-mode)
(require 'setup-clojure-mode)
; (require 'setup-rust-mode)
; (require 'setup-go-mode)

