(require 'evil-leader)
(require 'evil)
(require 'key-chord)
(require 'rxvt)

(evil-leader/set-leader ",")

;; <leader> bindings
(evil-leader/set-key
  ;; projectile
  "a" 'projectile-find-file
  "p s" 'projectile-switch-project
  "p c" 'projectile-run-shell-command-in-root

  ;; global
  "e" 'execute-extended-command
  "o" 'find-file
  "w" 'save-buffer
  "n" 'write-file
  "b" 'switch-to-buffer
  "v" 'split-window-horizontally
  "s" 'split-window-vertically
  "c" 'kill-this-buffer
  "k" 'kill-buffer
  "d" 'delete-window
  "q" 'save-buffers-kill-terminal)

;; ESC == Quit
(define-key evil-normal-state-map [escape] 'abort-recursive-edit)
(define-key evil-visual-state-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

;; Movement Keys
(define-key evil-motion-state-map "j" 'evil-backward-char)
(define-key evil-motion-state-map "k" 'evil-next-line)
(define-key evil-motion-state-map "l" 'evil-previous-line)
(define-key evil-motion-state-map ";" 'evil-forward-char)

(define-key evil-insert-state-map (kbd "C-j") 'evil-backward-char)
(define-key evil-insert-state-map (kbd "C-k") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-l") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-;") 'evil-forward-char)
(define-key evil-insert-state-map (kbd "<right>") 'evil-forward-char)

(define-key evil-insert-state-map (kbd "C-a") 'evil-append-line)
(define-key evil-insert-state-map (kbd "C-i") 'evil-insert-line)
(define-key evil-insert-state-map (kbd "C-o") 'evil-open-below)

;; Window Movement Keys
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-;") 'evil-window-right)
(define-key evil-normal-state-map (kbd "<right>") 'evil-window-right)

(define-key evil-normal-state-map (kbd "C-v") 'shrink-window-horizontally)
(global-unset-key (kbd "C-s")) 
(define-key evil-normal-state-map (kbd "C-s") 'shrink-window)

(setq key-chord-two-keys-delay 0.1)

;; State Change Keys
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)

(global-evil-leader-mode)
(evil-mode 1)
(key-chord-mode 1)
(provide 'setup-evil)
