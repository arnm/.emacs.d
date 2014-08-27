;; path setup

(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append
         (split-string-and-unquote path ":")
         exec-path)))

;; Add external project to load path
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Configure load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

(require 'setup-package)

;; Install packages if they're missing
(defun init-install-packages ()
  (packages-install
   '(color-theme-sanityinc-tomorrow
     nyan-mode
     evil
     evil-leader
     projectile
     multiple-cursors
     paredit
     autopair
     auto-complete
     yasnippet
     magit
     git-gutter
     ;flycheck
     ;emacs-eclim
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
     ;clojure-mode
     ;cider
     ;rust-mode
     )))

(condition-case nil
    (init-install-packages)
  (error
   (package-refresh-contents)
   (init-install-packages)))

(require 'appearance)
(require 'global-key-maps)

;; System setup
(require 'setup-projectile-mode)
(require 'setup-nyan-mode)
(require 'setup-evil-mode)
(require 'setup-ido-mode)
(require 'setup-paredit)
(require 'setup-autopair-mode)
(require 'setup-multiple-cursors)
(require 'setup-auto-complete-mode)
(require 'setup-yas-mode)
(require 'setup-git-gutter-mode)
(eval-after-load 'magit '(require 'setup-magit))

;; Language specific setups
; (require 'setup-js2-mode)
; (require 'setup-emmet-mode)
; (require 'setup-python-mode)
; (require 'setup-clojure-mode)
; (require 'setup-rust-mode)
; (require 'setup-go-mode)

