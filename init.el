(setq exec-path
      (append (split-string-and-unquote (getenv "PATH") " ")
	      exec-path))

(setq custom-file (concat user-emacs-directory "custom.el" ))
(when (file-exists-p custom-file)
  (load custom-file))

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

(defgroup dotemacs nil
  "Custom configuration for dotemacs."
  :group 'local)

(defcustom dotemacs-cache-directory
  (concat user-emacs-directory ".cache/")
  "The storage location for various persistent files."
  :group 'dotemacs)

(defcustom dotemacs-modules
  '(init-util
    init-package
    init-apperance

    init-yasnippet
    ;; init-auto-complete
    init-company

    init-ace-jump-mode
    init-evil
    init-bindings

    init-autopair
    init-expand-region
    init-multiple-cursors
    init-paredit

    init-flx-ido
    init-git-gutter
    ;; init-nyan-mode

    init-magit
    init-projectile

    init-prog-mode
    init-org-mode
    init-clojure-mode
    init-eldoc
    init-emmet-mode
    init-js2-mode
    ;; init-jsx-mode
    init-rust-mode)
  "List of modules enabled in dotemacs."
  :group 'dotemacs)

(dolist (module dotemacs-modules)
  (require module))
