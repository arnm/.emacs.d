(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

;; make sure TAB works in terminal
(setq evil-want-C-i-jump nil)

(setq evilnc-hotkey-comment-operator "gc")

(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-nerd-commenter)
(require-package 'evil-surround)
(require-package 'linum-relative)

(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'linum-relative)

(defcustom dotemacs-evil-state-modes
  '(fundamental-mode
    text-mode
    prog-mode
    log-edit-mode)
  "List of modes that should start up in Evil state."
  :type '(repeat (symbol))
  :group 'dotemacs)

(defun arnm/enable-evil-mode ()
  (turn-on-evil-mode)
  (linum-mode 1))

(defun arnm/disable-evil-mode ()
  (linum-mode -1)
  (set-cursor-color "red"))

(defun arnm/evil-mode ()
  (if (apply 'derived-mode-p dotemacs-evil-state-modes)
      (arnm/enable-evil-mode)
    (arnm/disable-evil-mode)))

(add-hook 'after-change-major-mode-hook 'arnm/evil-mode)

(global-evil-leader-mode t)
(global-evil-surround-mode t)

(defun arnm/evil-modeline-change (default-color)
  "changes the modeline color when the evil mode changes"
  (let ((color (cond ((evil-insert-state-p) '("#002233" . "#ffffff"))
		     ((evil-visual-state-p) '("#330033" . "#ffffff"))
		     ((evil-normal-state-p) default-color)
		     (t '("#440000" . "#ffffff")))))
    (set-face-background 'mode-line (car color))
    (set-face-foreground 'mode-line (cdr color))))

(lexical-let ((default-color (cons (face-background 'mode-line)
				   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
	    (lambda () (arnm/evil-modeline-change default-color))))

(provide 'init-evil)
