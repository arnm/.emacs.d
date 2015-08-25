(arnm/package/install 'rust-mode)

(defconst racer-repo "git@github.com:phildawes/racer.git")
(defconst racer-directory (concat (arnm/util/data-directory) "racer/"))

(defun arnm/rust/clone-racer ()
  (magit-clone racer-repo racer-directory))

(arnm/util/after 'rust-mode
  (arnm/util/after "magit-autoloads"
    (arnm/util/after "f-autoloads"
      (when (not (f-exists? racer-directory))
        (arnm/rust/clone-racer)
        (when (executable-find "cargo")
          (let ((default-directory racer-directory))
            (shell-command "cargo build --release")))))))

(provide 'arnm-rust)
