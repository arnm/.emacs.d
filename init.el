;; load required utility package
(load-file (concat user-emacs-directory "config/arnm-util.el"))

;; specify which packages are to be loaded
(defconst arnm-packages
          '(
            arnm-package
            arnm-theme

            arnm-evil
	    arnm-vcs
	    arnm-helm
            arnm-bindings
            ))

(arnm/util/require-packages arnm-packages)

