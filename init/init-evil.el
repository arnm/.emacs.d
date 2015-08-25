(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("light blue" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(defconst evil-modes
  '(fundamental-mode
    text-mode
    prog-mode
    log-edit-mode))

(defun arnm/evil/mode ()
  "Enables / Disables Evil depending on the modes enabled"
  (if (apply 'derived-mode-p evil-modes)
      (turn-on-evil-mode)
    (turn-off-evil-mode)))

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
