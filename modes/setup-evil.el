(require 'evil)
(require 'evil-leader)
(require 'key-chord)
(require 'rxvt)

(evil-leader/set-leader ",")

;; <leader> bindings
(evil-leader/set-key
  ;; projectile
  "a" 'projectile-find-file
  "p s" 'projectile-switch-project
  "p c" 'projectile-kill-buffers
  "p b" 'projectile-switch-to-buffer

  ;; expand-region
  "r" 'er/expand-region

  ;; global
  "f" 'evil-ace-jump-word-mode
  "b" 'switch-to-buffer
  "c" 'kill-this-buffer
  "d" 'delete-window
  "e" 'smex
  "k" 'kill-buffer
  "n" 'write-file
  "o" 'find-file
  "q" 'save-buffers-kill-terminal
  "s" 'split-window-vertically
  "v" 'split-window-horizontally
  "w" 'save-buffer)

;; esc == Quit
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

(define-key evil-motion-state-map ";" 'evil-forward-char)
(define-key evil-motion-state-map "j" 'evil-backward-char)
(define-key evil-motion-state-map "k" 'evil-next-line)
(define-key evil-motion-state-map "l" 'evil-previous-line)

;;; Insert State

(define-key evil-insert-state-map (kbd "C-a") 'evil-append-line)
(define-key evil-insert-state-map (kbd "C-i") 'evil-insert-line)

;; State Change Keys
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

;; Movement Keys

(define-key evil-insert-state-map (kbd "C-;") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "C-j") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-k") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-l") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)
(define-key evil-insert-state-map (kbd "<right>") 'evil-forward-char)

;; Window Movement Keys

(define-key evil-normal-state-map (kbd "C-;") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-up)
(define-key evil-normal-state-map (kbd "<right>") 'evil-window-right)

(define-key evil-normal-state-map (kbd "C-s") 'shrink-window)
(define-key evil-normal-state-map (kbd "C-v") 'shrink-window-horizontally)

;;; Visual State
(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)

(setq key-chord-two-keys-delay 0.1)

(global-evil-leader-mode)
(evil-mode 1)
(key-chord-mode 1)

(provide 'setup-evil)
