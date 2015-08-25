(arnm/package/require 'evil)
(arnm/package/require 'evil-leader)
(arnm/package/require 'evil-nerd-commenter)
(arnm/package/require 'evil-surround)
(arnm/package/require 'linum-relative)

(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("light blue" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'linum-relative)

(global-evil-leader-mode t)
(global-evil-surround-mode t)

;; List of modes where Evil should be enabled
(defconst evil-modes
          '(fundamental-mode
             text-mode
             prog-mode
             log-edit-mode))

(defun arnm/evil/enable ()
  "Enables Evil."
  (interactive)
  (turn-on-evil-mode)
  (linum-mode 1))

(defun arnm/evil/disable ()
  "Disables Evil."
  (interactive)
  (turn-off-evil-mode)
  (linum-mode -1))

(defun arnm/evil/mode ()
  "Enables / Disables Evil depending on the modes enabled"
  (if (apply 'derived-mode-p evil-modes)
    (arnm/evil/enable)
    (arnm/evil/disable)))

(add-hook 'after-change-major-mode-hook 'arnm/evil/mode)

(defconst default-background (face-background 'mode-line))
(defconst default-foreground (face-foreground 'mode-line))
(defconst default-color (cons default-background default-foreground))

(defun arnm/evil/modeline ()
  "Change modeline color depending on Evil's current mode."
  (let ((color (if (or (evil-normal-state-p)
                       (evil-insert-state-p)
                       (evil-visual-state-p))
                 default-color
                 '("#440000" . "#ffffff"))))
    (set-face-background 'mode-line (car color))
    (set-face-foreground 'mode-line (cdr color))))

(add-hook 'post-command-hook 'arnm/evil/modeline)

(provide 'arnm-evil)
